
Shader "GW/BaseModel"
{
	Properties
	{
		_MainTex("MainTex", 2D) = "white" {}
		_Color ("Color", Color) = (1,0.732353,0.3308824,1)
		//_Strength_Color ("Strength_Color", Range(0, 6)) = 1.52004
	}

	Category
	{
		//Tags{ "Queue" = "Geometry" "RenderType" = "Opaque" }
		Tags{ "Queue" = "Transparent-1" "IgnoreProjector" = "True" "RenderType" = "Transparent" }
		//AlphaTest Greater 0.05
		Cull Off
		Lighting Off
		Fog{ Mode off }
		//Blend SrcAlpha OneMinusSrcAlpha
		//Cull Off Lighting Off ZWrite Off Fog{ Color(0,0,0,0) 
		/*
		BindChannels
		{
			//Bind "Color11", color
			//Bind "Vertex", vertex
			Bind "TexCoord", texcoord
		}
		*/
		SubShader
		{

			Pass
			{
				/*
				CGPROGRAM
					//引入头文件  
	                #include "Lighting.cginc"  
					#pragma vertex vert  
					#pragma fragment frag

					uniform sampler2D _MainTex;
                	uniform fixed4 _Color;

					struct a2v  
	                {  
	                    float4 vertex : POSITION;  
	                    float3 normal : NORMAL;  
	                    float4 texcoord : TEXCOORD0;  
	                };  
	                struct v2f  
	                {  
	                    float4 pos : SV_POSITION;  
	                    float3 worldNormal : TEXCOORD0;  
	                    //转化纹理坐标  
	                    float2 uv : TEXCOORD1;  
	                };  
					//定义顶点shader  
	                v2f vert(a2v v)  
	                {  
	                    v2f o;  
	                    o.pos = UnityObjectToClipPos(v.vertex);  
	                    //把法线转化到世界空间  
	                    o.worldNormal = mul(v.normal, (float3x3)unity_WorldToObject);  
	                    //通过TRANSFORM_TEX宏转化纹理坐标，主要处理了Offset和Tiling的改变,默认时等同于o.uv = v.texcoord.xy;  
	                    o.uv = v.texcoord;
	                    return o;  
	                }  					
	                
                	
                	fixed4 frag(v2f i) : SV_Target {

	                    fixed4 texcol = tex2D(_MainTex, i.uv);
	                    texcol *= _Color;
	                    //texcol.rgb += i.color;
						texcol.a=_Color.a;

	                    return texcol;
	                }
	            ENDCG
				*/
				SetTexture[_MainTex]
				{
					//combine texture * primary * _Color
					combine texture * primary
				}
				
			}
		}
	}

	FallBack "Diffuse"  
}
