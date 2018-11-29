// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.28 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.28;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:0,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:4013,x:33527,y:32649,varname:node_4013,prsc:2|emission-6183-OUT;n:type:ShaderForge.SFN_Color,id:4519,x:32758,y:32773,ptovrint:False,ptlb:Color_copy,ptin:_Color_copy,varname:_Color_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Tex2d,id:8313,x:32805,y:32971,ptovrint:False,ptlb:node_8123,ptin:_node_8123,varname:node_8123,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:f2af4644ad0957b4c883b0d14cac884d,ntxv:0,isnm:False|UVIN-9796-OUT;n:type:ShaderForge.SFN_Multiply,id:2220,x:33032,y:32995,varname:node_2220,prsc:2|A-4519-RGB,B-8313-RGB;n:type:ShaderForge.SFN_Panner,id:1845,x:32294,y:32897,varname:node_1845,prsc:2,spu:0,spv:-0.5|UVIN-4268-UVOUT;n:type:ShaderForge.SFN_Add,id:9796,x:32577,y:32971,varname:node_9796,prsc:2|A-1845-UVOUT,B-9977-OUT;n:type:ShaderForge.SFN_TexCoord,id:4268,x:32063,y:32897,varname:node_4268,prsc:2,uv:0;n:type:ShaderForge.SFN_Tex2d,id:1337,x:32388,y:33208,ptovrint:False,ptlb:node_5449,ptin:_node_5449,varname:node_5449,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:e812391b083c02f41aac315ce19461de,ntxv:0,isnm:False|UVIN-9960-UVOUT;n:type:ShaderForge.SFN_Panner,id:9960,x:32246,y:33184,varname:node_9960,prsc:2,spu:0.1,spv:-0.3|UVIN-1106-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:1106,x:32031,y:33171,varname:node_1106,prsc:2,uv:0;n:type:ShaderForge.SFN_Multiply,id:9977,x:32658,y:33236,varname:node_9977,prsc:2|A-1337-R,B-4312-OUT;n:type:ShaderForge.SFN_Slider,id:4312,x:32218,y:33467,ptovrint:False,ptlb:node_647,ptin:_node_647,varname:node_647,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1.791053,max:3;n:type:ShaderForge.SFN_Multiply,id:8419,x:33196,y:32792,varname:node_8419,prsc:2|A-3142-OUT,B-2220-OUT;n:type:ShaderForge.SFN_Slider,id:3142,x:32782,y:32695,ptovrint:False,ptlb:node_3263,ptin:_node_3263,varname:node_3263,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:4.83738,max:5;n:type:ShaderForge.SFN_Tex2d,id:3844,x:32904,y:33495,ptovrint:False,ptlb:node_9866,ptin:_node_9866,varname:node_9866,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:fb4aef3153042814992f181e8c3ead37,ntxv:0,isnm:False|UVIN-6043-UVOUT;n:type:ShaderForge.SFN_Panner,id:6043,x:32707,y:33528,varname:node_6043,prsc:2,spu:0,spv:-0.5|UVIN-549-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:549,x:32297,y:33565,varname:node_549,prsc:2,uv:0;n:type:ShaderForge.SFN_Multiply,id:6783,x:33194,y:33428,varname:node_6783,prsc:2|A-3844-R,B-7365-OUT;n:type:ShaderForge.SFN_Slider,id:7365,x:32771,y:33381,ptovrint:False,ptlb:node_6127,ptin:_node_6127,varname:node_6127,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:2,max:2;n:type:ShaderForge.SFN_VertexColor,id:7801,x:33038,y:32478,varname:node_7801,prsc:2;n:type:ShaderForge.SFN_Multiply,id:6183,x:33322,y:32520,varname:node_6183,prsc:2|A-7801-G,B-8419-OUT;proporder:4519-8313-3142-1337-4312;pass:END;sub:END;*/

Shader "Shader Forge/ljf_02" {
    Properties {
        _Color_copy ("Color_copy", Color) = (1,1,1,1)
        _node_8123 ("node_8123", 2D) = "white" {}
        _node_3263 ("node_3263", Range(0, 5)) = 4.83738
        _node_5449 ("node_5449", 2D) = "white" {}
        _node_647 ("node_647", Range(0, 3)) = 1.791053
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
            uniform float4 _Color_copy;
            uniform sampler2D _node_8123; uniform float4 _node_8123_ST;
            uniform sampler2D _node_5449; uniform float4 _node_5449_ST;
            uniform float _node_647;
            uniform float _node_3263;
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
                float4 node_5007 = _Time + _TimeEditor;
                float2 node_9960 = (i.uv0+node_5007.g*float2(0.1,-0.3));
                float4 _node_5449_var = tex2D(_node_5449,TRANSFORM_TEX(node_9960, _node_5449));
                float2 node_9796 = ((i.uv0+node_5007.g*float2(0,-0.5))+(_node_5449_var.r*_node_647));
                float4 _node_8123_var = tex2D(_node_8123,TRANSFORM_TEX(node_9796, _node_8123));
                float3 emissive = (i.vertexColor.g*(_node_3263*(_Color_copy.rgb*_node_8123_var.rgb)));
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
