// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.28 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.28;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:0,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:4013,x:33672,y:32327,varname:node_4013,prsc:2|emission-7153-OUT;n:type:ShaderForge.SFN_Color,id:1304,x:32693,y:32498,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_1304,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Tex2d,id:2120,x:32713,y:32709,ptovrint:False,ptlb:node_2120,ptin:_node_2120,varname:node_2120,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:8d3305e2c86b92f409e47327f9362667,ntxv:0,isnm:False|UVIN-2507-OUT;n:type:ShaderForge.SFN_Multiply,id:350,x:32884,y:32589,varname:node_350,prsc:2|A-1304-RGB,B-2120-RGB;n:type:ShaderForge.SFN_TexCoord,id:1098,x:31731,y:32733,varname:node_1098,prsc:2,uv:0;n:type:ShaderForge.SFN_Panner,id:8308,x:31977,y:32752,varname:node_8308,prsc:2,spu:1,spv:1|UVIN-1098-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:7331,x:32136,y:32752,ptovrint:False,ptlb:node_7331,ptin:_node_7331,varname:node_7331,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:f2af4644ad0957b4c883b0d14cac884d,ntxv:0,isnm:False|UVIN-8308-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:5713,x:32856,y:32315,ptovrint:False,ptlb:node_5713,ptin:_node_5713,varname:node_5713,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Panner,id:3595,x:32179,y:32467,varname:node_3595,prsc:2,spu:1,spv:1|UVIN-8909-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:8909,x:31909,y:32474,varname:node_8909,prsc:2,uv:0;n:type:ShaderForge.SFN_Multiply,id:9484,x:32354,y:32810,varname:node_9484,prsc:2|A-4327-OUT,B-7331-R;n:type:ShaderForge.SFN_Slider,id:4327,x:32022,y:32641,ptovrint:False,ptlb:node_4327,ptin:_node_4327,varname:node_4327,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.6685619,max:1;n:type:ShaderForge.SFN_Add,id:2507,x:32505,y:32562,varname:node_2507,prsc:2|A-3595-UVOUT,B-9484-OUT;n:type:ShaderForge.SFN_Multiply,id:8051,x:33096,y:32430,varname:node_8051,prsc:2|A-5713-RGB,B-350-OUT;n:type:ShaderForge.SFN_Multiply,id:2382,x:33209,y:32391,varname:node_2382,prsc:2|A-2985-OUT,B-8051-OUT;n:type:ShaderForge.SFN_Slider,id:2985,x:32871,y:32143,ptovrint:False,ptlb:node_2985,ptin:_node_2985,varname:node_2985,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:6.923077,max:10;n:type:ShaderForge.SFN_Multiply,id:7153,x:33456,y:32185,varname:node_7153,prsc:2|A-6250-RGB,B-2382-OUT;n:type:ShaderForge.SFN_Tex2d,id:6250,x:33255,y:31989,ptovrint:False,ptlb:node_6250,ptin:_node_6250,varname:node_6250,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:b41033a812e862a4cb46229b6d294e3d,ntxv:0,isnm:False;proporder:1304-2120-5713-7331-4327-2985-6250;pass:END;sub:END;*/

Shader "Shader Forge/liuguang02" {
    Properties {
        _Color ("Color", Color) = (1,1,1,1)
        _node_2120 ("node_2120", 2D) = "white" {}
        _node_5713 ("node_5713", 2D) = "white" {}
        _node_7331 ("node_7331", 2D) = "white" {}
        _node_4327 ("node_4327", Range(0, 1)) = 0.6685619
        _node_2985 ("node_2985", Range(0, 10)) = 6.923077
        _node_6250 ("node_6250", 2D) = "white" {}
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
            uniform float4 _Color;
            uniform sampler2D _node_2120; uniform float4 _node_2120_ST;
            uniform sampler2D _node_7331; uniform float4 _node_7331_ST;
            uniform sampler2D _node_5713; uniform float4 _node_5713_ST;
            uniform float _node_4327;
            uniform float _node_2985;
            uniform sampler2D _node_6250; uniform float4 _node_6250_ST;
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
                float4 _node_6250_var = tex2D(_node_6250,TRANSFORM_TEX(i.uv0, _node_6250));
                float4 _node_5713_var = tex2D(_node_5713,TRANSFORM_TEX(i.uv0, _node_5713));
                float4 node_2968 = _Time + _TimeEditor;
                float2 node_8308 = (i.uv0+node_2968.g*float2(1,1));
                float4 _node_7331_var = tex2D(_node_7331,TRANSFORM_TEX(node_8308, _node_7331));
                float2 node_2507 = ((i.uv0+node_2968.g*float2(1,1))+(_node_4327*_node_7331_var.r));
                float4 _node_2120_var = tex2D(_node_2120,TRANSFORM_TEX(node_2507, _node_2120));
                float3 emissive = (_node_6250_var.rgb*(_node_2985*(_node_5713_var.rgb*(_Color.rgb*_node_2120_var.rgb))));
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
