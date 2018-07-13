// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.28 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.28;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:4013,x:33242,y:32821,varname:node_4013,prsc:2|emission-5944-OUT,clip-8219-OUT;n:type:ShaderForge.SFN_Color,id:1304,x:32401,y:32584,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_1304,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Tex2d,id:5787,x:32506,y:32812,ptovrint:False,ptlb:node_5787,ptin:_node_5787,varname:node_5787,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:101c239f8579176408bb604afb085ea9,ntxv:0,isnm:False|UVIN-4859-OUT;n:type:ShaderForge.SFN_Multiply,id:9855,x:32786,y:32739,varname:node_9855,prsc:2|A-1304-RGB,B-5787-RGB;n:type:ShaderForge.SFN_Multiply,id:5944,x:32968,y:32622,varname:node_5944,prsc:2|A-8814-OUT,B-9855-OUT;n:type:ShaderForge.SFN_Slider,id:8814,x:32603,y:32553,ptovrint:False,ptlb:node_8814,ptin:_node_8814,varname:node_8814,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:5;n:type:ShaderForge.SFN_Tex2d,id:6409,x:31996,y:32902,ptovrint:False,ptlb:node_6409,ptin:_node_6409,varname:node_6409,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:75e351761b2c80a47930125cebba7a08,ntxv:0,isnm:False|UVIN-7237-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:7237,x:31771,y:32902,varname:node_7237,prsc:2,uv:0;n:type:ShaderForge.SFN_TexCoord,id:3951,x:31861,y:32597,varname:node_3951,prsc:2,uv:0;n:type:ShaderForge.SFN_Add,id:4859,x:32316,y:32752,varname:node_4859,prsc:2|A-3951-UVOUT,B-3971-OUT;n:type:ShaderForge.SFN_Multiply,id:3971,x:32274,y:33012,varname:node_3971,prsc:2|A-5017-OUT,B-6409-B;n:type:ShaderForge.SFN_Slider,id:5017,x:31890,y:32823,ptovrint:False,ptlb:node_5017,ptin:_node_5017,varname:node_5017,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.4739745,max:1;n:type:ShaderForge.SFN_Tex2d,id:5168,x:32456,y:33350,ptovrint:False,ptlb:node_5168,ptin:_node_5168,varname:node_5168,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:b01ee1ccad44c2648ac6b70fc1cfa6d6,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Slider,id:9126,x:32377,y:33155,ptovrint:False,ptlb:node_9126,ptin:_node_9126,varname:node_9126,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:4.663353,max:8;n:type:ShaderForge.SFN_Multiply,id:8219,x:32859,y:33124,varname:node_8219,prsc:2|A-9126-OUT,B-5168-A;proporder:1304-5787-8814-6409-5017-5168-9126;pass:END;sub:END;*/

Shader "Shader Forge/p_ice_v01" {
    Properties {
        _Color ("Color", Color) = (1,1,1,1)
        _node_5787 ("node_5787", 2D) = "white" {}
        _node_8814 ("node_8814", Range(0, 5)) = 1
        _node_6409 ("node_6409", 2D) = "white" {}
        _node_5017 ("node_5017", Range(0, 1)) = 0.4739745
        _node_5168 ("node_5168", 2D) = "white" {}
        _node_9126 ("node_9126", Range(0, 8)) = 4.663353
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="TransparentCutout"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Cull Off
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma exclude_renderers xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _Color;
            uniform sampler2D _node_5787; uniform float4 _node_5787_ST;
            uniform float _node_8814;
            uniform sampler2D _node_6409; uniform float4 _node_6409_ST;
            uniform float _node_5017;
            uniform sampler2D _node_5168; uniform float4 _node_5168_ST;
            uniform float _node_9126;
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
                float4 _node_5168_var = tex2D(_node_5168,TRANSFORM_TEX(i.uv0, _node_5168));
                clip((_node_9126*_node_5168_var.a) - 0.5);
////// Lighting:
////// Emissive:
                float4 _node_6409_var = tex2D(_node_6409,TRANSFORM_TEX(i.uv0, _node_6409));
                float2 node_4859 = (i.uv0+(_node_5017*_node_6409_var.b));
                float4 _node_5787_var = tex2D(_node_5787,TRANSFORM_TEX(node_4859, _node_5787));
                float3 emissive = (_node_8814*(_Color.rgb*_node_5787_var.rgb));
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma exclude_renderers xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform sampler2D _node_5168; uniform float4 _node_5168_ST;
            uniform float _node_9126;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos(v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float4 _node_5168_var = tex2D(_node_5168,TRANSFORM_TEX(i.uv0, _node_5168));
                clip((_node_9126*_node_5168_var.a) - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
