// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.28 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.28;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:0,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:4013,x:33364,y:32491,varname:node_4013,prsc:2|emission-5390-OUT;n:type:ShaderForge.SFN_Color,id:1304,x:32438,y:33075,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_1304,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Tex2d,id:3019,x:32358,y:32822,ptovrint:False,ptlb:node_3019,ptin:_node_3019,varname:node_3019,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:5390,x:33128,y:32591,varname:node_5390,prsc:2|A-244-RGB,B-569-OUT;n:type:ShaderForge.SFN_Tex2d,id:1969,x:32535,y:32534,ptovrint:False,ptlb:node_1969,ptin:_node_1969,varname:node_1969,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:5dc24804c06a15d4995fa856c6a5e44a,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:244,x:32764,y:32534,ptovrint:False,ptlb:node_244,ptin:_node_244,varname:node_244,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:b41033a812e862a4cb46229b6d294e3d,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:6403,x:32733,y:32864,varname:node_6403,prsc:2|A-3019-RGB,B-1304-RGB;n:type:ShaderForge.SFN_Multiply,id:569,x:33012,y:32779,varname:node_569,prsc:2|A-1969-RGB,B-6403-OUT;proporder:1304-3019-1969-244;pass:END;sub:END;*/

Shader "Shader Forge/xiantiaoguang_01" {
    Properties {
        _Color ("Color", Color) = (1,1,1,1)
        _node_3019 ("node_3019", 2D) = "white" {}
        _node_1969 ("node_1969", 2D) = "white" {}
        _node_244 ("node_244", 2D) = "white" {}
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
            uniform float4 _Color;
            uniform sampler2D _node_3019; uniform float4 _node_3019_ST;
            uniform sampler2D _node_1969; uniform float4 _node_1969_ST;
            uniform sampler2D _node_244; uniform float4 _node_244_ST;
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
                float4 _node_244_var = tex2D(_node_244,TRANSFORM_TEX(i.uv0, _node_244));
                float4 _node_1969_var = tex2D(_node_1969,TRANSFORM_TEX(i.uv0, _node_1969));
                float4 _node_3019_var = tex2D(_node_3019,TRANSFORM_TEX(i.uv0, _node_3019));
                float3 emissive = (_node_244_var.rgb*(_node_1969_var.rgb*(_node_3019_var.rgb*_Color.rgb)));
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
