// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.28 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.28;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:0,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:4013,x:33371,y:32623,varname:node_4013,prsc:2|emission-6713-OUT;n:type:ShaderForge.SFN_Tex2d,id:793,x:30998,y:32977,ptovrint:False,ptlb:node_8125,ptin:_node_8125,varname:node_8125,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:708d6d516b2264940a4d88e5ed0361fb,ntxv:0,isnm:False|UVIN-751-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:5489,x:31636,y:32996,ptovrint:False,ptlb:node_4112,ptin:_node_4112,varname:node_4112,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:920d31ee27450b8409d0c014cd2a3c7e,ntxv:0,isnm:False|UVIN-1167-OUT;n:type:ShaderForge.SFN_Panner,id:751,x:30753,y:32881,varname:node_751,prsc:2,spu:0.01,spv:-0.1|UVIN-2729-UVOUT;n:type:ShaderForge.SFN_Add,id:1167,x:31450,y:32957,varname:node_1167,prsc:2|A-9945-UVOUT,B-2700-OUT;n:type:ShaderForge.SFN_TexCoord,id:5320,x:31145,y:32651,varname:node_5320,prsc:2,uv:0;n:type:ShaderForge.SFN_Panner,id:9945,x:31330,y:32651,varname:node_9945,prsc:2,spu:0.05,spv:-0.1|UVIN-5320-UVOUT;n:type:ShaderForge.SFN_Multiply,id:2700,x:31175,y:33104,varname:node_2700,prsc:2|A-793-R,B-1768-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1768,x:30973,y:33187,ptovrint:False,ptlb:node_1699,ptin:_node_1699,varname:node_1699,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;n:type:ShaderForge.SFN_TexCoord,id:2729,x:30509,y:32881,varname:node_2729,prsc:2,uv:0;n:type:ShaderForge.SFN_Color,id:8079,x:31862,y:32646,ptovrint:False,ptlb:node_2443,ptin:_node_2443,varname:node_2443,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_ValueProperty,id:8920,x:31740,y:32819,ptovrint:False,ptlb:node_3905,ptin:_node_3905,varname:node_3905,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:3;n:type:ShaderForge.SFN_Multiply,id:6957,x:32044,y:32827,varname:node_6957,prsc:2|A-8079-RGB,B-8920-OUT,C-5489-RGB;n:type:ShaderForge.SFN_Multiply,id:6713,x:32253,y:32993,varname:node_6713,prsc:2|A-6957-OUT,B-8422-A;n:type:ShaderForge.SFN_VertexColor,id:8422,x:31926,y:33120,varname:node_8422,prsc:2;proporder:5489-8079-8920-793-1768;pass:END;sub:END;*/

Shader "Shader Forge/zhanshitai01" {
    Properties {
        _node_4112 ("node_4112", 2D) = "white" {}
        _node_2443 ("node_2443", Color) = (0.5,0.5,0.5,1)
        _node_3905 ("node_3905", Float ) = 3
        _node_8125 ("node_8125", 2D) = "white" {}
        _node_1699 ("node_1699", Float ) = 2
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
            #pragma exclude_renderers ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _node_8125; uniform float4 _node_8125_ST;
            uniform sampler2D _node_4112; uniform float4 _node_4112_ST;
            uniform float _node_1699;
            uniform float4 _node_2443;
            uniform float _node_3905;
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
                float4 node_6281 = _Time + _TimeEditor;
                float2 node_751 = (i.uv0+node_6281.g*float2(0.01,-0.1));
                float4 _node_8125_var = tex2D(_node_8125,TRANSFORM_TEX(node_751, _node_8125));
                float2 node_1167 = ((i.uv0+node_6281.g*float2(0.05,-0.1))+(_node_8125_var.r*_node_1699));
                float4 _node_4112_var = tex2D(_node_4112,TRANSFORM_TEX(node_1167, _node_4112));
                float3 emissive = ((_node_2443.rgb*_node_3905*_node_4112_var.rgb)*i.vertexColor.a);
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
