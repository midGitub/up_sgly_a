
Shader "GW/model/Chibang"
{
	Properties
	{
		_MainTex("MainTex", 2D) = "white" {}
	//_Color ("Color", Color) = (1,0.732353,0.3308824,1)
	//_Strength_Color ("Strength_Color", Range(0, 6)) = 1.52004
	}

		Category
	{
		//Tags{ "Queue" = "Geometry" "RenderType" = "Opaque" }
		Tags{ "Queue" = "Transparent-1" "IgnoreProjector" = "True" "RenderType" = "Transparent" }
		AlphaTest Greater 0.05
		Cull Off
		Lighting Off
		Fog{ Mode off }
		//Blend SrcAlpha OneMinusSrcAlpha
		//Cull Off Lighting Off ZWrite Off Fog{ Color(0,0,0,0) 

		BindChannels
	{
		//Bind "Color11", color
		//Bind "Vertex", vertex
		Bind "TexCoord", texcoord
	}

		SubShader
	{
		Pass
	{
		SetTexture[_MainTex]
	{
		combine texture * primary
	}
	}
	}
	}
}
