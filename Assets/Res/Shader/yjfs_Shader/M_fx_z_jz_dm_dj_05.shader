// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.28 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.28;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:0,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:4013,x:32719,y:32712,varname:node_4013,prsc:2|emission-6246-OUT;n:type:ShaderForge.SFN_Color,id:1304,x:30792,y:32401,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_1304,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.7,c3:0.3,c4:1;n:type:ShaderForge.SFN_Tex2d,id:5402,x:30792,y:32621,ptovrint:False,ptlb:Texture_01,ptin:_Texture_01,varname:node_5402,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-5178-OUT;n:type:ShaderForge.SFN_Multiply,id:6246,x:32467,y:32775,varname:node_6246,prsc:2|A-2501-OUT,B-976-RGB;n:type:ShaderForge.SFN_VertexColor,id:559,x:31716,y:33059,varname:node_559,prsc:2;n:type:ShaderForge.SFN_Slider,id:2079,x:31606,y:32820,ptovrint:False,ptlb:saturation,ptin:_saturation,varname:node_2079,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Tex2d,id:976,x:32180,y:32979,ptovrint:False,ptlb:make,ptin:_make,varname:node_976,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:1325,x:32434,y:33054,varname:node_1325,prsc:2;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:2501,x:32180,y:32777,varname:node_2501,prsc:2|IN-6688-OUT,IMIN-221-OUT,IMAX-2079-OUT,OMIN-9907-OUT,OMAX-6664-OUT;n:type:ShaderForge.SFN_Vector1,id:9907,x:31936,y:32850,varname:node_9907,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:6664,x:31936,y:32902,varname:node_6664,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:221,x:31936,y:32796,varname:node_221,prsc:2,v1:1;n:type:ShaderForge.SFN_If,id:6688,x:31907,y:32565,varname:node_6688,prsc:2|A-7664-OUT,B-5799-OUT,GT-7279-OUT,EQ-882-OUT,LT-882-OUT;n:type:ShaderForge.SFN_Multiply,id:882,x:31303,y:32712,varname:node_882,prsc:2|A-5402-A,B-1304-RGB,C-4090-OUT,D-7788-OUT;n:type:ShaderForge.SFN_ToggleProperty,id:7664,x:31626,y:32469,ptovrint:False,ptlb:color_gle,ptin:_color_gle,varname:node_7664,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False;n:type:ShaderForge.SFN_ValueProperty,id:5799,x:31626,y:32547,ptovrint:False,ptlb:node_5799,ptin:_node_5799,varname:node_5799,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Dot,id:7788,x:31001,y:32955,varname:node_7788,prsc:2,dt:0|A-5402-RGB,B-9127-OUT;n:type:ShaderForge.SFN_Multiply,id:7279,x:31303,y:32589,varname:node_7279,prsc:2|A-5402-A,B-1304-RGB,C-4090-OUT,D-5402-RGB;n:type:ShaderForge.SFN_Slider,id:4090,x:30910,y:32796,ptovrint:False,ptlb:Color_Strength,ptin:_Color_Strength,varname:node_4090,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2136752,max:5;n:type:ShaderForge.SFN_ValueProperty,id:9127,x:30785,y:32999,ptovrint:False,ptlb:Dot_value,ptin:_Dot_value,varname:node_9127,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:5178,x:30477,y:32623,varname:node_5178,prsc:2|A-62-OUT,B-1169-OUT;n:type:ShaderForge.SFN_Add,id:62,x:30205,y:32620,varname:node_62,prsc:2|A-1858-UVOUT,B-3687-UVOUT;n:type:ShaderForge.SFN_ValueProperty,id:1169,x:30205,y:32768,ptovrint:False,ptlb:UV_size,ptin:_UV_size,varname:node_1169,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.2;n:type:ShaderForge.SFN_Panner,id:1858,x:29824,y:32525,varname:node_1858,prsc:2,spu:-1,spv:0|UVIN-5663-UVOUT;n:type:ShaderForge.SFN_Panner,id:3687,x:29824,y:32666,varname:node_3687,prsc:2,spu:-1,spv:0|UVIN-5663-UVOUT;n:type:ShaderForge.SFN_Slider,id:5927,x:29420,y:32549,ptovrint:False,ptlb:V_amin,ptin:_V_amin,varname:node_5927,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:3;n:type:ShaderForge.SFN_Slider,id:2686,x:29420,y:32691,ptovrint:False,ptlb:U_amin,ptin:_U_amin,varname:node_2686,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:3;n:type:ShaderForge.SFN_TexCoord,id:5663,x:29517,y:32282,varname:node_5663,prsc:2,uv:0;proporder:1304-5402-2079-976-7664-5799-4090-9127-1169-5927-2686;pass:END;sub:END;*/

Shader "Shader Forge/M_fx_z_jz_dm_dj_05" {
    Properties {
        _Color ("Color", Color) = (1,0.7,0.3,1)
        _Texture_01 ("Texture_01", 2D) = "white" {}
        _saturation ("saturation", Range(0, 1)) = 0
        _make ("make", 2D) = "white" {}
        [MaterialToggle] _color_gle ("color_gle", Float ) = 0
        _node_5799 ("node_5799", Float ) = 0
        _Color_Strength ("Color_Strength", Range(0, 5)) = 0.2136752
        _Dot_value ("Dot_value", Float ) = 1
        _UV_size ("UV_size", Float ) = 0.2
        _V_amin ("V_amin", Range(0, 3)) = 0
        _U_amin ("U_amin", Range(0, 3)) = 0
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
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform float4 _Color;
            uniform sampler2D _Texture_01; uniform float4 _Texture_01_ST;
            uniform float _saturation;
            uniform sampler2D _make; uniform float4 _make_ST;
            uniform fixed _color_gle;
            uniform float _node_5799;
            uniform float _Color_Strength;
            uniform float _Dot_value;
            uniform float _UV_size;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                UNITY_FOG_COORDS(1)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
////// Lighting:
////// Emissive:
                float node_6688_if_leA = step(_color_gle,_node_5799);
                float node_6688_if_leB = step(_node_5799,_color_gle);
                float4 node_1602 = _Time + _TimeEditor;
                float2 node_5178 = (((i.uv0+node_1602.g*float2(-1,0))+(i.uv0+node_1602.g*float2(-1,0)))*_UV_size);
                float4 _Texture_01_var = tex2D(_Texture_01,TRANSFORM_TEX(node_5178, _Texture_01));
                float3 node_882 = (_Texture_01_var.a*_Color.rgb*_Color_Strength*dot(_Texture_01_var.rgb,_Dot_value));
                float node_221 = 1.0;
                float node_9907 = 1.0;
                float4 _make_var = tex2D(_make,TRANSFORM_TEX(i.uv0, _make));
                float3 emissive = ((node_9907 + ( (lerp((node_6688_if_leA*node_882)+(node_6688_if_leB*(_Texture_01_var.a*_Color.rgb*_Color_Strength*_Texture_01_var.rgb)),node_882,node_6688_if_leA*node_6688_if_leB) - node_221) * (0.0 - node_9907) ) / (_saturation - node_221))*_make_var.rgb);
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
