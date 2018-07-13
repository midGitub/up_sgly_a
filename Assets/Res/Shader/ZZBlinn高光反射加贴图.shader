// Upgrade NOTE: replaced '_World2Object' with 'unity_WorldToObject'

Shader "ZZ/Blinn高光反射加贴图"
{
	Properties
	{
		_Color ("Color Tint", Color) = (1, 1, 1, 1)
		_MainTex ("Main Tex", 2D) = "white" {}
		_Specular ("Specular", Color) = (1.0, 1.0, 1.0, 1.0)// 材质高光反射颜色
		_Gloss ("Gloss", Range(8.0, 256)) = 20// 高光区域大小
		_AlphaTest ("AlphaTest", Range(0.0, 1.0)) = 0.5
		_Factor ("Factor", Range(0, 0.1)) = 0.01// 描边粗细因子
		_OutLineColor ("OutLine Color", Color) = (1, 1, 1, 1)// 描边颜色
	}

	SubShader
	{
		Pass
		{
			Tags { "LightMode"="ForwardBase" }// 只有定义了正确的LightMode才能得到Unity内置的光照变量 例如_LightColor0

			Blend SrcAlpha OneMinusSrcAlpha
			Cull Off
			ZWrite On

			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag

			#include "Lighting.cginc"// 得到Unity内置变量_LightColor0

			fixed4 _Color;
			sampler2D _MainTex;
			float4 _MainTex_ST;
			fixed4 _Specular;
			float _Gloss;
			fixed _AlphaTest;
			float _Factor;
			half4 _OutLineColor;

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
				float3 worldPos : TEXCOORD1;
				float2 uv : TEXCOORD2;
			};

			v2f vert(a2v v) 
			{
				v2f o;
				o.pos = UnityObjectToClipPos(v.vertex);
				o.worldNormal = mul(v.normal, (float3x3)unity_WorldToObject);
				o.worldPos = mul(unity_ObjectToWorld, v.vertex).xyz;
				o.uv = TRANSFORM_TEX(v.texcoord, _MainTex);
				//o.uv = v.texcoord.xy * _MainTex_ST.xy + _MainTex_ST.zw;
				return o;
			}

			fixed4 frag(v2f i) : SV_Target
			{
				if (tex2D(_MainTex, i.uv).a < _AlphaTest)
				{
					discard;
				}

				fixed3 worldNormal = normalize(i.worldNormal); 
				fixed3 worldLightDir = normalize(_WorldSpaceLightPos0.xyz);

				// 贴图
				fixed3 albedo = tex2D(_MainTex, i.uv).rgb * _Color.rgb;

				// 环境光
				fixed3 ambient = UNITY_LIGHTMODEL_AMBIENT.xyz * albedo;

				// 漫反射
				//fixed3 diffuse = _LightColor0.rgb * albedo * saturate(dot(worldNormal, worldLightDir));
				fixed3 diffuse = _LightColor0.rgb * albedo * (0.5 * dot(worldNormal, worldLightDir) + 0.5);

				// 高光反射
				fixed3 reflectDir = normalize(reflect(-worldLightDir, worldNormal));
				fixed3 viewDir = normalize(_WorldSpaceCameraPos.xyz - i.worldPos.xyz);
				fixed3 halfDir = normalize(worldLightDir + viewDir);
				fixed3 specular = _LightColor0.rgb * _Specular.rgb * pow(saturate(dot(reflectDir, halfDir)), _Gloss);

				fixed4 ret = fixed4(diffuse, 1.0);// + specular  ambient
				ret.a = 0.1;
				return ret;
			}
			ENDCG
		}
	}

	Fallback "Specular"
}