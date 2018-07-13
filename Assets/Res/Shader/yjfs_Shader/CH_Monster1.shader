// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

Shader "Custom/Character/CH_Monster1"     
{     
	Properties{
		_MainTex("Base (RGB) Trans (A)", 2D) = "white" {}
		_Flash("Flash",Range(0, 1)) = 0
	}

	SubShader{
		Tags{ "Queue" = "AlphaTest" "IgnoreProjector" = "True" "RenderType" = "TransparentCutout" }
		LOD 100

		Lighting Off
		Pass{
			CGPROGRAM
#pragma vertex vert
#pragma fragment frag

#include "UnityCG.cginc"

			struct appdata_t {
				float4 vertex : POSITION;
				float2 texcoord : TEXCOORD0;
			};

			struct v2f {
				float4 vertex : SV_POSITION;
				half2 texcoord : TEXCOORD0;
			};

			sampler2D _MainTex;
			fixed4 _MainTex_ST;
			fixed _Flash;

			v2f vert(appdata_t v)
			{
				v2f o;
				o.vertex = UnityObjectToClipPos(v.vertex);
				o.texcoord = TRANSFORM_TEX(v.texcoord, _MainTex);
				return o;
			}

			fixed4 frag(v2f i) : COLOR
			{
				fixed4 col = tex2D(_MainTex, i.texcoord);
				col = lerp(col, fixed4(1.0, 1.0, 1.0, col.a),_Flash);
				clip(col.a - 0.5);
				return col;
			}
			ENDCG
			}
		}
	FallBack "Diffuse"
}
