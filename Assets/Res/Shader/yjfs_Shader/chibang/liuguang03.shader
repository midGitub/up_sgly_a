// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.28 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.28;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:0,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:4013,x:33843,y:32575,varname:node_4013,prsc:2|emission-6105-OUT;n:type:ShaderForge.SFN_Tex2d,id:7429,x:32792,y:32852,ptovrint:False,ptlb:node_7429,ptin:_node_7429,varname:node_7429,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:b675e0eea5a78d8489db46e1ff535d72,ntxv:0,isnm:False|UVIN-6058-OUT;n:type:ShaderForge.SFN_Panner,id:3946,x:32306,y:32855,varname:node_3946,prsc:2,spu:-0.5,spv:0|UVIN-2714-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:2714,x:32067,y:32855,varname:node_2714,prsc:2,uv:0;n:type:ShaderForge.SFN_Color,id:9123,x:32806,y:32567,ptovrint:False,ptlb:node_9123,ptin:_node_9123,varname:node_9123,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:7472,x:33049,y:32679,varname:node_7472,prsc:2|A-9123-RGB,B-7429-RGB;n:type:ShaderForge.SFN_Multiply,id:6105,x:33487,y:32593,varname:node_6105,prsc:2|A-39-OUT,B-7472-OUT;n:type:ShaderForge.SFN_Slider,id:39,x:32906,y:32477,ptovrint:False,ptlb:node_39,ptin:_node_39,varname:node_39,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:5;n:type:ShaderForge.SFN_Tex2d,id:5828,x:32368,y:32576,ptovrint:False,ptlb:node_5828,ptin:_node_5828,varname:node_5828,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:f2af4644ad0957b4c883b0d14cac884d,ntxv:0,isnm:False|UVIN-7627-UVOUT;n:type:ShaderForge.SFN_Panner,id:7627,x:32151,y:32557,varname:node_7627,prsc:2,spu:-0.5,spv:0|UVIN-5162-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:5162,x:31912,y:32528,varname:node_5162,prsc:2,uv:0;n:type:ShaderForge.SFN_Multiply,id:6551,x:32561,y:32632,varname:node_6551,prsc:2|A-5828-R,B-3210-OUT;n:type:ShaderForge.SFN_Add,id:6058,x:32612,y:32805,varname:node_6058,prsc:2|A-6551-OUT,B-3946-UVOUT;n:type:ShaderForge.SFN_Slider,id:3210,x:32232,y:32392,ptovrint:False,ptlb:node_3210,ptin:_node_3210,varname:node_3210,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.4881905,max:1;proporder:7429-9123-39-5828-3210;pass:END;sub:END;*/

Shader "Shader Forge/liuguang03" {
    Properties {
        _node_7429 ("node_7429", 2D) = "white" {}
        _node_9123 ("node_9123", Color) = (0.5,0.5,0.5,1)
        _node_39 ("node_39", Range(0, 5)) = 1
        _node_5828 ("node_5828", 2D) = "white" {}
        _node_3210 ("node_3210", Range(0, 1)) = 0.4881905
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
            uniform sampler2D _node_7429; uniform float4 _node_7429_ST;
            uniform float4 _node_9123;
            uniform float _node_39;
            uniform sampler2D _node_5828; uniform float4 _node_5828_ST;
            uniform float _node_3210;
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
                float4 node_6725 = _Time + _TimeEditor;
                float2 node_7627 = (i.uv0+node_6725.g*float2(-0.5,0));
                float4 _node_5828_var = tex2D(_node_5828,TRANSFORM_TEX(node_7627, _node_5828));
                float2 node_6058 = ((_node_5828_var.r*_node_3210)+(i.uv0+node_6725.g*float2(-0.5,0)));
                float4 _node_7429_var = tex2D(_node_7429,TRANSFORM_TEX(node_6058, _node_7429));
                float3 emissive = (_node_39*(_node_9123.rgb*_node_7429_var.rgb));
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
