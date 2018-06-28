// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.28 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.28;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:0,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.8805275,fgcg:0.5441177,fgcb:1,fgca:1,fgde:0.01,fgrn:50,fgrf:600,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:4013,x:33736,y:32635,varname:node_4013,prsc:2|emission-6940-OUT,alpha-8970-OUT;n:type:ShaderForge.SFN_Tex2d,id:7988,x:31965,y:32359,ptovrint:False,ptlb:Tex_Alpha,ptin:_Tex_Alpha,varname:node_7297,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:1,isnm:False|UVIN-9134-UVOUT;n:type:ShaderForge.SFN_Color,id:1988,x:31951,y:32135,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_2823,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.6177955,c3:0.3185013,c4:1;n:type:ShaderForge.SFN_Slider,id:3505,x:31500,y:32949,ptovrint:False,ptlb:Color_Strength,ptin:_Color_Strength,varname:node_1865,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2564101,max:5;n:type:ShaderForge.SFN_Multiply,id:1710,x:32396,y:32274,varname:node_1710,prsc:2|A-7988-A,B-1988-RGB,C-3505-OUT,D-7988-RGB;n:type:ShaderForge.SFN_Panner,id:9134,x:31438,y:32457,varname:node_9134,prsc:2,spu:0,spv:0.7|UVIN-3658-UVOUT;n:type:ShaderForge.SFN_Slider,id:6656,x:30875,y:32394,ptovrint:False,ptlb:v_anim,ptin:_v_anim,varname:node_2164,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:3;n:type:ShaderForge.SFN_Add,id:3345,x:31633,y:32496,varname:node_3345,prsc:2|A-9134-UVOUT,B-6487-UVOUT;n:type:ShaderForge.SFN_Panner,id:6487,x:31438,y:32608,varname:node_6487,prsc:2,spu:0,spv:0|UVIN-6224-UVOUT;n:type:ShaderForge.SFN_Slider,id:9309,x:30854,y:32497,ptovrint:False,ptlb:u_anim,ptin:_u_anim,varname:node_3927,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:3;n:type:ShaderForge.SFN_Multiply,id:5584,x:31768,y:32359,varname:node_5584,prsc:2|A-3345-OUT,B-6446-OUT;n:type:ShaderForge.SFN_Tex2d,id:6248,x:32481,y:33169,ptovrint:False,ptlb:Mask,ptin:_Mask,varname:node_9403,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_ValueProperty,id:6446,x:31422,y:32383,ptovrint:False,ptlb:UV_size,ptin:_UV_size,varname:node_1199,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.5;n:type:ShaderForge.SFN_If,id:4422,x:32414,y:32602,varname:node_4422,prsc:2|A-4973-OUT,B-9172-OUT,GT-1710-OUT,EQ-6089-OUT,LT-6089-OUT;n:type:ShaderForge.SFN_Vector1,id:9172,x:32021,y:32785,varname:node_9172,prsc:2,v1:0;n:type:ShaderForge.SFN_ToggleProperty,id:4973,x:32021,y:32733,ptovrint:False,ptlb:color_Dot,ptin:_color_Dot,varname:node_2471,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False;n:type:ShaderForge.SFN_Multiply,id:6089,x:32217,y:32854,varname:node_6089,prsc:2|A-7988-A,B-1988-RGB,C-3505-OUT,D-9866-OUT;n:type:ShaderForge.SFN_Dot,id:9866,x:31935,y:32943,varname:node_9866,prsc:2,dt:0|A-7988-RGB,B-5173-OUT;n:type:ShaderForge.SFN_Vector1,id:5173,x:31610,y:33052,varname:node_5173,prsc:2,v1:1;n:type:ShaderForge.SFN_Slider,id:6589,x:32138,y:33014,ptovrint:False,ptlb:saturation,ptin:_saturation,varname:node_3748,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:3312,x:32707,y:32591,varname:node_3312,prsc:2|IN-4422-OUT,IMIN-7011-OUT,IMAX-6589-OUT,OMIN-564-OUT,OMAX-6478-OUT;n:type:ShaderForge.SFN_Vector1,id:6478,x:32395,y:32824,varname:node_6478,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:7011,x:32395,y:32763,varname:node_7011,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:564,x:32295,y:33100,varname:node_564,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:6940,x:33095,y:32707,varname:node_6940,prsc:2|A-3312-OUT,B-6248-RGB,C-2630-RGB,D-2630-A;n:type:ShaderForge.SFN_TexCoord,id:23,x:31430,y:32768,varname:node_23,prsc:2,uv:0;n:type:ShaderForge.SFN_TexCoord,id:3658,x:31123,y:32543,varname:node_3658,prsc:2,uv:0;n:type:ShaderForge.SFN_TexCoord,id:6224,x:31108,y:32720,varname:node_6224,prsc:2,uv:0;n:type:ShaderForge.SFN_Multiply,id:8970,x:33050,y:33058,varname:node_8970,prsc:2|A-7988-A,B-6248-A;n:type:ShaderForge.SFN_VertexColor,id:2630,x:32889,y:32875,varname:node_2630,prsc:2;proporder:7988-1988-3505-6248-4973-6589-6446;pass:END;sub:END;*/

Shader "Shader Forge/M_add_pubu_001" {
    Properties {
        _Tex_Alpha ("Tex_Alpha", 2D) = "gray" {}
        _Color ("Color", Color) = (1,0.6177955,0.3185013,1)
        _Color_Strength ("Color_Strength", Range(0, 5)) = 0.2564101
        _Mask ("Mask", 2D) = "white" {}
        [MaterialToggle] _color_Dot ("color_Dot", Float ) = 0
        _saturation ("saturation", Range(0, 1)) = 0
        _UV_size ("UV_size", Float ) = 0.5
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend One One
            Cull Off
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma exclude_renderers xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _Tex_Alpha; uniform float4 _Tex_Alpha_ST;
            uniform float4 _Color;
            uniform float _Color_Strength;
            uniform sampler2D _Mask; uniform float4 _Mask_ST;
            uniform fixed _color_Dot;
            uniform float _saturation;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 vertexColor : COLOR;
                UNITY_FOG_COORDS(1)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
////// Lighting:
////// Emissive:
                float node_4422_if_leA = step(_color_Dot,0.0);
                float node_4422_if_leB = step(0.0,_color_Dot);
                float4 node_1839 = _Time + _TimeEditor;
                float2 node_9134 = (i.uv0+node_1839.g*float2(0,0.7));
                float4 _Tex_Alpha_var = tex2D(_Tex_Alpha,TRANSFORM_TEX(node_9134, _Tex_Alpha));
                float3 node_6089 = (_Tex_Alpha_var.a*_Color.rgb*_Color_Strength*dot(_Tex_Alpha_var.rgb,1.0));
                float node_7011 = 1.0;
                float node_564 = 1.0;
                float4 _Mask_var = tex2D(_Mask,TRANSFORM_TEX(i.uv0, _Mask));
                float3 emissive = ((node_564 + ( (lerp((node_4422_if_leA*node_6089)+(node_4422_if_leB*(_Tex_Alpha_var.a*_Color.rgb*_Color_Strength*_Tex_Alpha_var.rgb)),node_6089,node_4422_if_leA*node_4422_if_leB) - node_7011) * (0.0 - node_564) ) / (_saturation - node_7011))*_Mask_var.rgb*i.vertexColor.rgb*i.vertexColor.a);
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,(_Tex_Alpha_var.a*_Mask_var.a));
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
