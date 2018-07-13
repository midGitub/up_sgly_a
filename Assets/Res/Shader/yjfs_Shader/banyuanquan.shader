// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.28 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.28;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:0,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:4013,x:33364,y:32560,varname:node_4013,prsc:2|emission-1752-OUT;n:type:ShaderForge.SFN_Tex2d,id:9490,x:32277,y:32773,ptovrint:False,ptlb:node_9490,ptin:_node_9490,varname:node_9490,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-8638-UVOUT;n:type:ShaderForge.SFN_Multiply,id:9372,x:32583,y:32697,varname:node_9372,prsc:2|A-9490-RGB,B-31-RGB;n:type:ShaderForge.SFN_Color,id:31,x:32569,y:32916,ptovrint:False,ptlb:node_31,ptin:_node_31,varname:node_31,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_TexCoord,id:5049,x:31988,y:32407,varname:node_5049,prsc:2,uv:0;n:type:ShaderForge.SFN_Panner,id:8638,x:32302,y:32433,varname:node_8638,prsc:2,spu:-1,spv:0|UVIN-5049-UVOUT,DIST-6968-OUT;n:type:ShaderForge.SFN_Slider,id:6968,x:31952,y:32650,ptovrint:False,ptlb:uv_01,ptin:_uv_01,varname:node_6968,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:9915,x:32889,y:32689,varname:node_9915,prsc:2|A-3554-RGB,B-9372-OUT;n:type:ShaderForge.SFN_Tex2d,id:3554,x:32573,y:32326,ptovrint:False,ptlb:node_3554,ptin:_node_3554,varname:node_3554,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:1752,x:33154,y:32445,varname:node_1752,prsc:2|A-4002-OUT,B-9915-OUT;n:type:ShaderForge.SFN_Slider,id:4002,x:32829,y:32453,ptovrint:False,ptlb:liangdu,ptin:_liangdu,varname:node_4002,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:5;proporder:9490-31-6968-3554-4002;pass:END;sub:END;*/

Shader "Shader Forge/banyuanquan" {
    Properties {
        _node_9490 ("node_9490", 2D) = "white" {}
        _node_31 ("node_31", Color) = (0.5,0.5,0.5,1)
        _uv_01 ("uv_01", Range(-1, 1)) = 0
        _node_3554 ("node_3554", 2D) = "white" {}
        _liangdu ("liangdu", Range(0, 5)) = 0
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
            uniform sampler2D _node_9490; uniform float4 _node_9490_ST;
            uniform float4 _node_31;
            uniform float _uv_01;
            uniform sampler2D _node_3554; uniform float4 _node_3554_ST;
            uniform float _liangdu;
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
                float4 _node_3554_var = tex2D(_node_3554,TRANSFORM_TEX(i.uv0, _node_3554));
                float2 node_8638 = (i.uv0+_uv_01*float2(-1,0));
                float4 _node_9490_var = tex2D(_node_9490,TRANSFORM_TEX(node_8638, _node_9490));
                float3 emissive = (_liangdu*(_node_3554_var.rgb*(_node_9490_var.rgb*_node_31.rgb)));
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
