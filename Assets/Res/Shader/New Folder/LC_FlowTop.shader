
Shader "LC/FlowTop" {
Properties {
  _MainTex ("base tex", 2D) = "white"{}
  _tintAmount ("Tint", Range(0,1)) = 0.5
  _ColorA ("Color A", Color) = (1,1,1,1)  
  _ColorB ("Color B", Color) = (1,1,1,1)
  _Speed ("Speed", Range(0,100)) = 5
  _Frequency ("Frequency", Range(0,5)) = 2
  _Amplitude ("Amplitude", Range(-1,1)) = 0.5
}

SubShader {

 CGPROGRAM
 #pragma surface surf Lambert vertex:vert
 
 sampler2D _MainTex;
 float4 _ColorA;
 float4 _ColorB;
 float _tintAmount;
 float _Speed;
 float _Frequency;
 float _Amplitude;
 
 struct Input
 {
     float2 uv_MainTex;
     float3 vertColor;
     };

void vert(inout appdata_full v, out Input o)
{
  UNITY_INITIALIZE_OUTPUT(Input, o)
  float time = _Time* _Speed;
  float waveValueA = sin(time + v.vertex.x * _Frequency) * _Amplitude;
  
  v.vertex.xyz = float3(v.vertex.x, v.vertex.y + waveValueA, v.vertex.z);
  v.normal = normalize(float3(v.normal.x + waveValueA, v.normal.y, v.normal.z));
  o.vertColor = float3(waveValueA,waveValueA,waveValueA);
  }
  
void surf (Input IN, inout SurfaceOutput o)
{
    half4 c = tex2D(_MainTex, IN.uv_MainTex);
    float3 tintColor = lerp( _ColorA,_ColorB, IN.vertColor).rgb;
    o.Albedo = c.rgb * (tintColor * _tintAmount);
	o.Alpha = c.a;
		}
		ENDCG
	}
	FallBack "Diffuse"
}
