Shader "rxjh/tree/VFDiffuse" {
Properties {
	_Color ("Main Color", Color) = (0.5,0.5,0.5,1)
	_MainTex ("Base (RGB) Trans (A)", 2D) = "white" {}
	_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
}

SubShader {
	//Tags {"Queue"="AlphaTest" "IgnoreProjector"="True" "RenderType"="TransparentCutout"}
	Tags {"Queue"="Geometry" "IgnoreProjector"="True" "RenderType"="Opaque"}
	//LOD 200
	Lighting Off
	Blend Off
	Fog{Mode Off}
     Pass {
            CGPROGRAM
            #pragma vertex vert_img
            #pragma fragment frag

            #include "UnityCG.cginc"
			sampler2D _MainTex;
			fixed4 _Color;
			float _Cutoff;
            fixed4 frag(v2f_img i) : SV_Target {
                fixed4 color = tex2D(_MainTex,i.uv)* _Color;
	            //clip(color.a-_Cutoff);
				if(color.a<_Cutoff){
				discard;
				}
                return color;
            }
            ENDCG
        }
}

Fallback "Legacy Shaders/Transparent/Diffuse"
}
