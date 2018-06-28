/*
正常来说，物体法线与视线(从顶点至相机的方向)角度越一致，就越是能被玩家看见的中间。而边缘一般与法线垂直。由点乘即可计算轮廓光。

优点:
(1)实现简单，对渲染效率增加负担极小。
(2)有渐变，较真实。
缺点:
(1)只适用于法线较均匀过度的模型。而不适用于棱角分明的物体，如上图中的立方体，故使用范围与贴图加工刚好相反。

*/
Shader "GW/RimLight/RimNor" {
	Properties
	{
		_MainTex ("Texture",2D)	= "white"{}

		//_BumpMap ("Bumpmap",2D) = "bump" {}

		_RimColor ("Rim	Color",	Color) = (0.26,0.19,0.16,0.0)

		_RimPower ("Rim	Power",	Range(0.5,8.0))	= 3.0
	}
	SubShader
	{
		Tags { "RenderType" = "Opaque" }		
		Cull Off
		//Lighting Off
		//Fog{ Mode off }
		CGPROGRAM
			#pragma surface surf Lambert

			struct Input {
				float2 uv_MainTex;
				//float2 uv_BumpMap;
				float3 viewDir;
			};
			sampler2D _MainTex;
			//sampler2D _BumpMap;
			float4 _RimColor;

			float _RimPower;

			void surf (Input IN, inout SurfaceOutput o) {
				o.Albedo = tex2D (_MainTex, IN.uv_MainTex).rgb;
				//o.Normal = UnpackNormal (tex2D (_MainTex, IN.uv_MainTex));
				half rim = 1.0 - saturate(dot (normalize(IN.viewDir), o.Normal));
				//saturate 限制值于[0,1]之间
				o.Emission = _RimColor.rgb * pow (rim, _RimPower);
			}
		ENDCG
	}

	//Fallback "Diffuse"
}
