// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

Shader "GW/Blur/GaussBlur" {
    Properties {
        _MainTex ("Albedo (RGB)", 2D) = "white" {}
        _TextureSize ("_TextureSize",Float) = 256
        _BlurRadius ("_BlurRadius",Range(1,15) ) = 5
    }
    SubShader {
        Tags { "RenderType"="Opaque" }
        LOD 200

        Pass {
            CGPROGRAM

            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"

            sampler2D _MainTex;
            int _BlurRadius;
            float _TextureSize;

            struct v2f {
                float4 pos : SV_POSITION;
                float2 uv : TEXCOORD0;
            };

            v2f vert( appdata_img v ) 
            {
                v2f o;
                o.pos = UnityObjectToClipPos(v.vertex);
                o.uv = v.texcoord.xy;
                return o;
            } 
            /*
            将上面的函数拷贝进来
            */
            //计算权重
            half GetGaussianDistribution( half x, half y, half rho ) {
                half g = 1.0f / sqrt( 2.0f * 3.141592654f * rho * rho );
                return g * exp( -(x * x + y * y) / (2 * rho * rho) );
            }

            float4 GetBlurColor( float2 uv )
            {
                half space = 1.0/_TextureSize; //算出一个像素的空间
                int count = _BlurRadius * 2 +1; //取值范围
                count *= count;

                //将以自己为中心，周围半径的所有颜色相加，然后除以总数，求得平均值
                fixed4 colorTmp = fixed4(0,0,0,0);
                for( int x = -_BlurRadius ; x <= _BlurRadius ; x++ )
                {
                    for( int y = -_BlurRadius ; y <= _BlurRadius ; y++ )
                    {
                        fixed4 color = tex2D(_MainTex,uv + float2(x * space,y * space));
                        colorTmp += color;
                    }
                }
                return colorTmp/count;
            }

            fixed4 GetGaussBlurColor( float2 uv )
            {
                //算出一个像素的空间
                half space = 1.0/_TextureSize; 
                //参考正态分布曲线图，可以知道 3σ 距离以外的点，权重已经微不足道了。
                //反推即可知道当模糊半径为r时，取σ为 r/3 是一个比较合适的取值。
                half rho = (half)_BlurRadius * space / 3.0;

                //---权重总和
                half weightTotal = 0;
                for( int x = -_BlurRadius ; x <= _BlurRadius ; x++ )
                {
                    for( int y = -_BlurRadius ; y <= _BlurRadius ; y++ )
                    {
                        weightTotal += GetGaussianDistribution(x * space, y * space, rho );
                    }
                }
                //--------
                fixed4 colorTmp = fixed4(0,0,0,0);
                for( int x = -_BlurRadius ; x <= _BlurRadius ; x++ )
                {
                    for( int y = -_BlurRadius ; y <= _BlurRadius ; y++ )
                    {
                        half weight = GetGaussianDistribution( x * space, y * space, rho )/weightTotal;

                        fixed4 color = tex2D(_MainTex,uv + float2(x * space,y * space));
                        color = color * weight;
                        colorTmp += color;
                    }
                }
                return colorTmp;
            }


            fixed4 frag(v2f i) : SV_Target 
            {
                //调用普通模糊
                //return GetBlurColor(i.uv);
                //调用高斯模糊  
                return GetGaussBlurColor(i.uv);
                //正常调用
                //return tex2D(_MainTex,i.uv);
            }

            ENDCG
        }
    }
    FallBack "Diffuse"
}