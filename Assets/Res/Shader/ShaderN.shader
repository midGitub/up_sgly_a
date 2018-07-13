Shader "Custom/N"
{
	Properties
	{
		_TintColor("Tint Color", Color) = (1, 1, 1, 1)
		_MainTex("Base (RGB) Trans (A)", 2D) = "white" {}
	}

	SubShader
	{
		Tags {"Queue" = "Transparent" "IgnoreProjector" = "True" "RenderType" = "Transparent"}
		Lighting Off Fog { Mode Off }
		Blend SrcAlpha OneMinusSrcAlpha
		ZWrite On
		Cull Off
		
		Pass
		{
			CGPROGRAM
			#pragma shader_feature BOOL_OVERRIDE_QUEUE
			#pragma shader_feature BOOL_NGUI

			#pragma vertex vert_vct
			#pragma fragment frag_mult 
			#pragma fragmentoption ARB_precision_hint_fastest
			#include "UnityCG.cginc"

			sampler2D _MainTex;
			float4 _MainTex_ST;

			fixed4 _TintColor;

			struct vin_vct
			{
				float4 vertex : POSITION;
				half2 texcoord : TEXCOORD0;
			};

			struct v2f_vct
			{
				float4 vertex : SV_POSITION;
				half2 texcoord : TEXCOORD0;
			};

			v2f_vct vert_vct(vin_vct v)
			{
				v2f_vct o;
				o.vertex = UnityObjectToClipPos(v.vertex);
				o.texcoord = v.texcoord;
				return o;
			}

			fixed4 frag_mult(v2f_vct i) : SV_TARGET
			{
				fixed4 col = tex2D(_MainTex, i.texcoord);
				return col * _TintColor;
			}

			ENDCG
		}
	}
	Fallback "Diffuse"
}
