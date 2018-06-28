
Shader "GW/Cover/PostCoverTransparent"
{
	Properties {  
        _Color ("Main Color", Color) = (1,1,1,1)  
        _MainTex ("Base (RGB)", 2D) = "white" {}  
    }  
    SubShader {  
        //能见内部物体
        //Tags { "RenderType"="Transparent" "Queue" = "Transparent"}  
        //不能见内部物体
        Tags { "RenderType"="Transparent" "Queue" = "Transparent-1"}  
        //不能见内部物体
        Pass  
        {  
            ZWrite On   //开启深度写入  
            ColorMask 0 //不写颜色  
        } 

        ZWrite Off  
  
        CGPROGRAM  
        #pragma surface surf Lambert alpha  
  
        sampler2D _MainTex;  
        fixed4 _Color;  
  
        struct Input {  
            float2 uv_MainTex;  
        };  
  
        void surf (Input IN, inout SurfaceOutput o) {  
            fixed4 c = tex2D(_MainTex, IN.uv_MainTex) * _Color;  
            o.Albedo = c.rgb;  
            o.Alpha = c.a;  
        }  
        ENDCG  
    }   
    FallBack "VertexLit"  
}  
