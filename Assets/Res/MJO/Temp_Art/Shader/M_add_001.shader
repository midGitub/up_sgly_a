// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.28 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.28;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:0,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:4013,x:32050,y:32411,varname:node_4013,prsc:2|emission-923-OUT;n:type:ShaderForge.SFN_Tex2d,id:9727,x:30370,y:32413,ptovrint:False,ptlb:Tex_Alpha,ptin:_Tex_Alpha,varname:node_7297,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:1,isnm:False|UVIN-5834-UVOUT;n:type:ShaderForge.SFN_Color,id:4174,x:30518,y:32159,ptovrint:False,ptlb:Color_copy,ptin:_Color_copy,varname:_Color_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.6177955,c3:0.3185013,c4:1;n:type:ShaderForge.SFN_Slider,id:3602,x:30067,y:32973,ptovrint:False,ptlb:Color_Strength,ptin:_Color_Strength,varname:node_1865,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2564101,max:5;n:type:ShaderForge.SFN_Multiply,id:1583,x:30963,y:32298,varname:node_1583,prsc:2|A-9727-A,B-4174-RGB,C-3602-OUT,D-9727-RGB;n:type:ShaderForge.SFN_Tex2d,id:66,x:31048,y:33193,ptovrint:False,ptlb:Mask,ptin:_Mask,varname:node_9403,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_If,id:7151,x:30981,y:32626,varname:node_7151,prsc:2|A-7825-OUT,B-242-OUT,GT-1583-OUT,EQ-2034-OUT,LT-2034-OUT;n:type:ShaderForge.SFN_Vector1,id:242,x:30737,y:32670,varname:node_242,prsc:2,v1:0;n:type:ShaderForge.SFN_ToggleProperty,id:7825,x:30720,y:32618,ptovrint:False,ptlb:color_Dot,ptin:_color_Dot,varname:node_2471,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False;n:type:ShaderForge.SFN_Multiply,id:2034,x:30784,y:32878,varname:node_2034,prsc:2|A-9727-A,B-4174-RGB,C-3602-OUT,D-3883-OUT;n:type:ShaderForge.SFN_Dot,id:3883,x:30502,y:32967,varname:node_3883,prsc:2,dt:0|A-9727-RGB,B-7097-OUT;n:type:ShaderForge.SFN_Vector1,id:7097,x:30177,y:33076,varname:node_7097,prsc:2,v1:1;n:type:ShaderForge.SFN_Slider,id:3054,x:30705,y:33038,ptovrint:False,ptlb:saturation,ptin:_saturation,varname:node_3748,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:4268,x:31258,y:32572,varname:node_4268,prsc:2|IN-7151-OUT,IMIN-2801-OUT,IMAX-3054-OUT,OMIN-2767-OUT,OMAX-1951-OUT;n:type:ShaderForge.SFN_Vector1,id:1951,x:30962,y:32848,varname:node_1951,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:2801,x:30962,y:32787,varname:node_2801,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:2767,x:30862,y:33124,varname:node_2767,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:4956,x:31537,y:32643,varname:node_4956,prsc:2|A-4268-OUT,B-66-RGB;n:type:ShaderForge.SFN_TexCoord,id:3634,x:29888,y:32425,varname:node_3634,prsc:2,uv:0;n:type:ShaderForge.SFN_Panner,id:5834,x:30082,y:32326,varname:node_5834,prsc:2,spu:0,spv:0|UVIN-3634-UVOUT;n:type:ShaderForge.SFN_Multiply,id:923,x:31797,y:32498,varname:node_923,prsc:2|A-4956-OUT,B-9423-RGB,C-9423-A;n:type:ShaderForge.SFN_VertexColor,id:9423,x:31488,y:32416,varname:node_9423,prsc:2;proporder:9727-4174-3602-66-7825-3054;pass:END;sub:END;*/

Shader "Shader Forge/M_add_001" {
    Properties {
        _Tex_Alpha ("Tex_Alpha", 2D) = "gray" {}
        _Color_copy ("Color_copy", Color) = (1,0.6177955,0.3185013,1)
        _Color_Strength ("Color_Strength", Range(0, 5)) = 0.2564101
        _Mask ("Mask", 2D) = "white" {}
        [MaterialToggle] _color_Dot ("color_Dot", Float ) = 0
        _saturation ("saturation", Range(0, 1)) = 0
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
            uniform float4 _Color_copy;
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
                float node_7151_if_leA = step(_color_Dot,0.0);
                float node_7151_if_leB = step(0.0,_color_Dot);
                float4 node_1328 = _Time + _TimeEditor;
                float2 node_5834 = (i.uv0+node_1328.g*float2(0,0));
                float4 _Tex_Alpha_var = tex2D(_Tex_Alpha,TRANSFORM_TEX(node_5834, _Tex_Alpha));
                float3 node_2034 = (_Tex_Alpha_var.a*_Color_copy.rgb*_Color_Strength*dot(_Tex_Alpha_var.rgb,1.0));
                float node_2801 = 1.0;
                float node_2767 = 1.0;
                float4 _Mask_var = tex2D(_Mask,TRANSFORM_TEX(i.uv0, _Mask));
                float3 emissive = (((node_2767 + ( (lerp((node_7151_if_leA*node_2034)+(node_7151_if_leB*(_Tex_Alpha_var.a*_Color_copy.rgb*_Color_Strength*_Tex_Alpha_var.rgb)),node_2034,node_7151_if_leA*node_7151_if_leB) - node_2801) * (0.0 - node_2767) ) / (_saturation - node_2801))*_Mask_var.rgb)*i.vertexColor.rgb*i.vertexColor.a);
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
