// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

Shader "Custom/Character/CH_Monster"     
{     
    Properties
	{
		 _MainTex ("Base (RGB)", 2D) = "white" { }
		_Flash   ("Flash",Range (0, 1)) = 0
		_RimColor ("Color", Color) = (1,1,1,1)	
	}

	SubShader
	{
		Cull Off
		Tags { "RenderType"="Opaque" }
		LOD 100
		//目标Alpha通道混合
            Blend SrcAlpha OneMinusSrcAlpha

		Pass
		{
		CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			#include "UnityCG.cginc"
			
            struct appdata {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord : TEXCOORD0;
            };

            struct v2f {
                float4 pos : SV_POSITION;
                float2 uv : TEXCOORD0;
                //fixed3 color : COLOR;
            };

				uniform float4 _MainTex_ST;
                uniform fixed4 _RimColor;
                uniform float _RimWidth;

                v2f vert (appdata_base v) {
                    v2f o;
                    o.pos = UnityObjectToClipPos(v.vertex );
                    o.uv = v.texcoord.xy;
                    return o;
                }

                uniform sampler2D _MainTex;
                uniform fixed4 _Color;
				float _Flash;

                fixed4 frag(v2f i) : COLOR {
                    fixed4 texcol = tex2D(_MainTex, i.uv);
					texcol = lerp(texcol,fixed4(1.0, 1.0, 1.0,1.0),_Flash);	
                    return texcol;
                }
		ENDCG
		}
	}
	FallBack "Diffuse"
}
