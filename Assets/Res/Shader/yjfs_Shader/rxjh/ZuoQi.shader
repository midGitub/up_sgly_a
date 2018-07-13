// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

Shader "rxjh/Zuoqi" {
Properties {
	_MainTex ("Base (RGB)", 2D) = "white" {}
}
SubShader {

	//Cull Off
	Tags{ "RenderType" = "Opaque" "Queue" = "Geometry+201" }
	LOD 100
	//目标Alpha通道混合
	//Blend SrcAlpha OneMinusSrcAlpha

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
};

uniform float4 _MainTex_ST;

v2f vert(appdata_base v) {
	v2f o;
	o.pos = UnityObjectToClipPos(v.vertex);
	o.uv = v.texcoord.xy;
	return o;
}

uniform sampler2D _MainTex;

fixed4 frag(v2f i) : COLOR{
	fixed4 texcol = tex2D(_MainTex, i.uv);
	return texcol;
}
ENDCG
}
} 
}
