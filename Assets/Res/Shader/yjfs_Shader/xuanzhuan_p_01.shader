// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.28 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.28;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:4013,x:33907,y:32128,varname:node_4013,prsc:2|emission-3462-OUT,alpha-5470-OUT;n:type:ShaderForge.SFN_Color,id:1304,x:33060,y:32172,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_1304,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Tex2d,id:1793,x:33169,y:32583,ptovrint:False,ptlb:node_1793,ptin:_node_1793,varname:node_1793,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:c675bbe258ec91c4285c6f1c944ad0ae,ntxv:0,isnm:False|UVIN-8818-OUT;n:type:ShaderForge.SFN_Multiply,id:1459,x:33229,y:32342,varname:node_1459,prsc:2|A-1304-RGB,B-1793-RGB;n:type:ShaderForge.SFN_TexCoord,id:4712,x:32887,y:32604,varname:node_4712,prsc:2,uv:0;n:type:ShaderForge.SFN_Panner,id:5687,x:32917,y:32666,varname:node_5687,prsc:2,spu:0.5,spv:0.5|UVIN-4712-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:6229,x:32606,y:32442,varname:node_6229,prsc:2,uv:0;n:type:ShaderForge.SFN_Tex2d,id:8424,x:32737,y:32201,ptovrint:False,ptlb:node_8424,ptin:_node_8424,varname:node_8424,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:c675bbe258ec91c4285c6f1c944ad0ae,ntxv:0,isnm:False|UVIN-4263-UVOUT;n:type:ShaderForge.SFN_Add,id:8818,x:32901,y:32363,varname:node_8818,prsc:2|A-8424-R,B-5687-UVOUT;n:type:ShaderForge.SFN_Multiply,id:9638,x:32327,y:32201,varname:node_9638,prsc:2|A-1594-OUT,B-6229-UVOUT;n:type:ShaderForge.SFN_Slider,id:1594,x:32505,y:32065,ptovrint:False,ptlb:node_1594,ptin:_node_1594,varname:node_1594,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.3589744,max:1;n:type:ShaderForge.SFN_Panner,id:4263,x:32505,y:32201,varname:node_4263,prsc:2,spu:0.5,spv:0.5|UVIN-9638-OUT;n:type:ShaderForge.SFN_Multiply,id:7590,x:33402,y:32321,varname:node_7590,prsc:2|A-6930-OUT,B-1459-OUT;n:type:ShaderForge.SFN_Slider,id:6930,x:33227,y:32000,ptovrint:False,ptlb:liang,ptin:_liang,varname:node_6930,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:5;n:type:ShaderForge.SFN_Multiply,id:6807,x:33572,y:32304,varname:node_6807,prsc:2|A-3040-RGB,B-7590-OUT;n:type:ShaderForge.SFN_Tex2d,id:3040,x:33504,y:32072,ptovrint:False,ptlb:node_3040,ptin:_node_3040,varname:node_3040,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:b6292640c2fa0c44a9e2bdabc129ab1b,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:3462,x:33729,y:32267,varname:node_3462,prsc:2|A-8551-RGB,B-6807-OUT;n:type:ShaderForge.SFN_Tex2d,id:8551,x:33654,y:32072,ptovrint:False,ptlb:node_8551,ptin:_node_8551,varname:node_8551,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:92e64a6c7d1393c41a119da40c761df1,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:2770,x:32806,y:32849,ptovrint:False,ptlb:node_2120_copy,ptin:_node_2120_copy,varname:_node_2120_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:5470,x:33528,y:32636,varname:node_5470,prsc:2|A-9787-OUT,B-1793-A;n:type:ShaderForge.SFN_Slider,id:9787,x:33371,y:32495,ptovrint:False,ptlb:node_9787,ptin:_node_9787,varname:node_9787,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:8412,x:34144,y:32703,varname:node_8412,prsc:2;proporder:1304-1793-8424-1594-6930-3040-8551-9787;pass:END;sub:END;*/

Shader "Shader Forge/xuanzhuan_p_01" {
    Properties {
        _Color ("Color", Color) = (1,1,1,1)
        _node_1793 ("node_1793", 2D) = "white" {}
        _node_8424 ("node_8424", 2D) = "white" {}
        _node_1594 ("node_1594", Range(0, 1)) = 0.3589744
        _liang ("liang", Range(0, 5)) = 1
        _node_3040 ("node_3040", 2D) = "white" {}
        _node_8551 ("node_8551", 2D) = "white" {}
        _node_9787 ("node_9787", Range(0, 1)) = 0
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
            Blend One OneMinusSrcAlpha
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
            uniform float4 _Color;
            uniform sampler2D _node_1793; uniform float4 _node_1793_ST;
            uniform sampler2D _node_8424; uniform float4 _node_8424_ST;
            uniform float _node_1594;
            uniform float _liang;
            uniform sampler2D _node_3040; uniform float4 _node_3040_ST;
            uniform sampler2D _node_8551; uniform float4 _node_8551_ST;
            uniform float _node_9787;
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
                float4 _node_8551_var = tex2D(_node_8551,TRANSFORM_TEX(i.uv0, _node_8551));
                float4 _node_3040_var = tex2D(_node_3040,TRANSFORM_TEX(i.uv0, _node_3040));
                float4 node_2786 = _Time + _TimeEditor;
                float2 node_4263 = ((_node_1594*i.uv0)+node_2786.g*float2(0.5,0.5));
                float4 _node_8424_var = tex2D(_node_8424,TRANSFORM_TEX(node_4263, _node_8424));
                float2 node_8818 = (_node_8424_var.r+(i.uv0+node_2786.g*float2(0.5,0.5)));
                float4 _node_1793_var = tex2D(_node_1793,TRANSFORM_TEX(node_8818, _node_1793));
                float3 emissive = (_node_8551_var.rgb*(_node_3040_var.rgb*(_liang*(_Color.rgb*_node_1793_var.rgb))));
                float3 finalColor = emissive;
                float node_5470 = (_node_9787*_node_1793_var.a);
                fixed4 finalRGBA = fixed4(finalColor,node_5470);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
