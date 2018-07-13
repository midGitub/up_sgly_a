// 表面着色器 剔除关闭 透明度测试
Shader "ZZ/Surface-Diffuse"
{
	Properties
	{
		_TIntColor ("TInt Color", Color) = (1, 1, 1, 1)
		_MainTex ("Base (RGB), Alpha (A)", 2D) = "black" {}
		_Cutoff ("Cutoff Value", Range(0, 1)) = 0.5
	}

	SubShader
	{
		LOD 200
		Cull Off
		Blend SrcAlpha OneMinusSrcAlpha

		Tags
		{
			"RenderType" = "Opaque"
		}

		CGPROGRAM
		#pragma surface surf SimpleLambert finalcolor:final alphatest:_Cutoff// 自定义光照模型

		fixed4 _TIntColor;
		sampler2D _MainTex;

		struct Input
		{
			float2 uv_MainTex;
			float4 vertColor;
		};

		void surf(Input i, inout SurfaceOutput o)
		{
			fixed4 c = tex2D(_MainTex, i.uv_MainTex) * _TIntColor;
			o.Albedo = c.rgb;
			o.Alpha = c.a;
		}

		// 自定义光照模型 半兰伯特
		half4 LightingSimpleLambert(SurfaceOutput s, half3 lightDir, half atten)
		{
			half4 c;
			c.rgb = s.Albedo * _LightColor0.rgb * (dot(s.Normal, lightDir) * atten * 0.5 + 0.5);
			c.a = s.Alpha;
			return c;
		}

		void final(Input i, SurfaceOutput o, inout fixed4 color)
		{
			color.a *= 0.5;
		}
		ENDCG

	}

    Fallback "Diffuse"
}