// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

/*
对于视差贴图，除了法线图之外，增加了一个HeightMap的贴图，
其实只有一个通道，也可以直接放在NormapMap的A通道中，贴图中黑色表示平坦，白色表示凸起。
在近距离的时候，法线图是经不起细看的，但是视差贴图效果却仍然很好，而且能看到凸起的细节：

法线强度为0的情况，等同于不加法线：
强度为1时，等同于直接使用法线：
加强法线强度，设置为2时，法线效果非常更加明显：
虽然我们可以调整法线的强度，但是也不是就可以无休止地调整，当强度调整为10时，效果就有点吓人了....
*/
Shader "GW/ParallaxMap"  
{  
    //属性  
    Properties{  
        _Diffuse("Diffuse", Color) = (1,1,1,1)  
        _MainTex("Base 2D", 2D) = "white"{}  
        _BumpMap("Bump Map", 2D) = "bump"{}  
        _HeightMap("Height Map", 2D) = "black"{}  
        _HeightFactor ("Height Scale", Range(0, 0.1)) = 0.05  
    }  
  
    //子着色器    
    SubShader  
    {  
        Pass  
        {  
            //定义Tags  
            Tags{ "RenderType" = "Opaque" }  
  
            CGPROGRAM  
            //引入头文件  
            #include "Lighting.cginc"  
            //定义Properties中的变量  
            fixed4 _Diffuse;  
            sampler2D _MainTex;  
            //使用了TRANSFROM_TEX宏就需要定义XXX_ST  
            float4 _MainTex_ST;  
            sampler2D _BumpMap;  
            float _HeightFactor;  
            sampler2D _HeightMap;  
  
            //定义结构体：vertex shader阶段输出的内容  
            struct v2f  
            {  
                float4 pos : SV_POSITION;  
                //转化纹理坐标  
                float2 uv : TEXCOORD0;  
                //tangent空间的光线方向  
                float3 lightDir : TEXCOORD1;  
                //需要视线方向  
                float3 viewDir : TEXCOORD2;  
            };  
  
            //计算uv偏移值  
            inline float2 CaculateParallaxUV(v2f i)  
            {  
                //采样heightmap  
                float height = tex2D(_HeightMap, i.uv).r;  
                //normalize view Dir  
                float3 viewDir = normalize(i.viewDir);  
                //偏移值 = 切线空间的视线方向.xy（uv空间下的视线方向）* height * 控制系数  
                float2 offset = viewDir.xy / viewDir.z * height * _HeightFactor;  
                return offset;  
            }  
  
            //定义顶点shader  
            v2f vert(appdata_tan v)  
            {  
                v2f o;  
                o.pos = UnityObjectToClipPos(v.vertex);  
                //这个宏为我们定义好了模型空间到切线空间的转换矩阵rotation，注意后面有个；  
                TANGENT_SPACE_ROTATION;  
                //ObjectSpaceLightDir可以把光线方向转化到模型空间，然后通过rotation再转化到切线空间  
                o.lightDir = mul(rotation, ObjSpaceLightDir(v.vertex));  
                //通过TRANSFORM_TEX宏转化纹理坐标，主要处理了Offset和Tiling的改变,默认时等同于o.uv = v.texcoord.xy;  
                o.uv = TRANSFORM_TEX(v.texcoord, _MainTex);  
                //计算观察方向  
                o.viewDir = mul(rotation, ObjSpaceViewDir(v.vertex));  
                return o;  
            }  
  
            //定义片元shader  
            fixed4 frag(v2f i) : SV_Target  
            {  
                //unity自身的diffuse也是带了环境光，这里我们也增加一下环境光  
                fixed3 ambient = UNITY_LIGHTMODEL_AMBIENT.xyz * _Diffuse.xyz;  
                float2 uvOffset = CaculateParallaxUV(i);  
                i.uv += uvOffset;  
                //直接解出切线空间法线  
                float3 tangentNormal = UnpackNormal(tex2D(_BumpMap, i.uv));  
                //normalize一下切线空间的光照方向  
                float3 tangentLight = normalize(i.lightDir);  
                //兰伯特光照  
                fixed3 lambert = saturate(dot(tangentNormal, tangentLight));  
                //最终输出颜色为lambert光强*材质diffuse颜色*光颜色  
                fixed3 diffuse = lambert * _Diffuse.xyz * _LightColor0.xyz + ambient;  
                //进行纹理采样  
                fixed4 color = tex2D(_MainTex, i.uv);  
                return fixed4(diffuse * color.rgb, 1.0);  
            }  
  
            //使用vert函数和frag函数  
            #pragma vertex vert  
            #pragma fragment frag     
  
            ENDCG  
        }  
  
    }  
        //前面的Shader失效的话，使用默认的Diffuse  
        FallBack "Diffuse"  
}  