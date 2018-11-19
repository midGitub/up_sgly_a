﻿// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

Shader "Bleach/Particles Additive Area Clip"
{
    Properties
    {
        _TintColor ("Tint Color", Color) = (0.5,0.5,0.5,0.5)
        _MainTex ("Particle Texture", 2D) = "white" {}
        _Area ("Area", Vector) = (-1,-1,1,1)
    }

    Category
    {
        Tags { "Queue"="Transparent" "IgnoreProjector"="True" "RenderType"="Transparent" }
        Blend SrcAlpha One
        AlphaTest Greater .01
        ColorMask RGB
        Cull Off
        Lighting Off
        ZWrite Off
        Fog { Color (0,0,0,0) }
        
        SubShader 
        {
            Pass
            {
                CGPROGRAM
                #pragma vertex vert
                #pragma fragment frag
                #pragma multi_compile_particles

                #include "UnityCG.cginc"

                sampler2D _MainTex;
                fixed4 _TintColor;
                float4 _Area;
                
                struct appdata_t
                {
                    float4 vertex : POSITION;
                    fixed4 color : COLOR;
                    float2 texcoord : TEXCOORD0;
                };

                struct v2f
                {
                    float4 vertex : SV_POSITION;
                    fixed4 color : COLOR;
                    float2 texcoord : TEXCOORD0;
                    float2 worldPos : TEXCOORD1;
                };
                
                float4 _MainTex_ST;

                v2f vert (appdata_t v)
                {
                    v2f o;
                    o.vertex = UnityObjectToClipPos(v.vertex);
                    o.texcoord = TRANSFORM_TEX(v.texcoord,_MainTex);
                    o.color = v.color;
                    o.worldPos = mul(unity_ObjectToWorld, v.vertex).xy;
                    return o;
                }

                fixed4 frag (v2f i) : SV_Target
                {
                    //bool inArea = i.worldPos.x >= _Area.x && i.worldPos.x <= _Area.z && i.worldPos.y >= _Area.y && i.worldPos.y <= _Area.w;
                    //return inArea? 2.0f * i.color * _TintColor * tex2D(_MainTex, i.texcoord) : fixed4(0,0,0,0);
                    return 2.0f * i.color * _TintColor * tex2D(_MainTex, i.texcoord);
                }
                ENDCG 
            }
        }    
    }
}