// Upgrade NOTE: replaced '_World2Object' with 'unity_WorldToObject'
// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

    Shader "GW/Diffuse/DiffuseTexVertex"  
    {  
        //属性  
        Properties{  
            _Diffuse("Diffuse", Color) = (1,1,1,1)  
            _MainTex("Base 2D", 2D) = "white"{}  
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
                //定义结构体：应用阶段到vertex shader阶段的数据，如果定义了  
                struct a2v  
                {  
                    float4 vertex : POSITION;  
                    float3 normal : NORMAL;  
                    float4 texcoord : TEXCOORD0;  
                };  
                //定义结构体：vertex shader阶段输出的内容  
                struct v2f  
                {  
                    float4 pos : SV_POSITION;  
                    fixed4 color : COLOR;  
                    //转化纹理坐标  
                    float2 uv : TEXCOORD1;  
                };  
      
                //定义顶点shader  
                v2f vert(a2v v)  
                {  
                    v2f o;  
                    o.pos = UnityObjectToClipPos(v.vertex);  
                    //unity自身的diffuse也是带了环境光，这里我们也增加一下环境光  
                    fixed3 ambient = UNITY_LIGHTMODEL_AMBIENT.xyz * _Diffuse.xyz;  
                    //把法线转化到世界空间  
                    float3 worldNormal = mul(v.normal, (float3x3)unity_WorldToObject);  
                    //归一化法线  
                    worldNormal = normalize(worldNormal);  
                    //把光照方向归一化  
                    fixed3 worldLightDir = normalize(_WorldSpaceLightPos0.xyz);  
                    //根据兰伯特模型计算顶点的光照信息,dot可能有负值，小于0的部分可以理解为看不见，直接取0  
                    fixed3 lambert = 0.5 * dot(worldNormal, worldLightDir) + 0.5;  
                    //最终输出颜色为lambert光强*材质diffuse颜色*光颜色  
                    o.color = fixed4(lambert * _Diffuse.xyz * _LightColor0.xyz + ambient, 1.0);  
                    //通过TRANSFORM_TEX宏转化纹理坐标，主要处理了Offset和Tiling的改变,默认时等同于o.uv = v.texcoord.xy;  
                    o.uv = TRANSFORM_TEX(v.texcoord, _MainTex);  
                    return o;  
                }  
      
                //定义片元shader  
                fixed4 frag(v2f i) : SV_Target  
                {  
                    return i.color * tex2D(_MainTex, i.uv);  
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