// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.28 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.28;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:0,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:4013,x:33092,y:32674,varname:node_4013,prsc:2|emission-1288-OUT;n:type:ShaderForge.SFN_Color,id:4842,x:31980,y:33074,ptovrint:False,ptlb:Color_copy,ptin:_Color_copy,varname:_Color_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Tex2d,id:2586,x:32000,y:33285,ptovrint:False,ptlb:node_2120,ptin:_node_2120,varname:node_2120,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:8d3305e2c86b92f409e47327f9362667,ntxv:0,isnm:False|UVIN-1506-OUT;n:type:ShaderForge.SFN_Multiply,id:545,x:32171,y:33165,varname:node_545,prsc:2|A-4842-RGB,B-2586-RGB;n:type:ShaderForge.SFN_TexCoord,id:5410,x:31018,y:33309,varname:node_5410,prsc:2,uv:0;n:type:ShaderForge.SFN_Panner,id:8372,x:31264,y:33328,varname:node_8372,prsc:2,spu:0.1,spv:0.1|UVIN-5410-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:7143,x:31423,y:33328,ptovrint:False,ptlb:node_7331,ptin:_node_7331,varname:node_7331,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:f2af4644ad0957b4c883b0d14cac884d,ntxv:0,isnm:False|UVIN-8372-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:4850,x:32143,y:32891,ptovrint:False,ptlb:node_5713,ptin:_node_5713,varname:node_5713,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Panner,id:4886,x:31466,y:33043,varname:node_4886,prsc:2,spu:0.1,spv:0.1|UVIN-1822-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:1822,x:31196,y:33050,varname:node_1822,prsc:2,uv:0;n:type:ShaderForge.SFN_Multiply,id:6578,x:31641,y:33386,varname:node_6578,prsc:2|A-170-OUT,B-7143-R;n:type:ShaderForge.SFN_Slider,id:170,x:31309,y:33217,ptovrint:False,ptlb:node_4327,ptin:_node_4327,varname:node_4327,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.6685619,max:1;n:type:ShaderForge.SFN_Add,id:1506,x:31792,y:33138,varname:node_1506,prsc:2|A-4886-UVOUT,B-6578-OUT;n:type:ShaderForge.SFN_Multiply,id:7075,x:32383,y:33006,varname:node_7075,prsc:2|A-4850-RGB,B-545-OUT;n:type:ShaderForge.SFN_Multiply,id:7242,x:32496,y:32967,varname:node_7242,prsc:2|A-6380-OUT,B-7075-OUT;n:type:ShaderForge.SFN_Slider,id:6380,x:32158,y:32719,ptovrint:False,ptlb:node_2985,ptin:_node_2985,varname:node_2985,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:6.923077,max:10;n:type:ShaderForge.SFN_Multiply,id:1288,x:32743,y:32761,varname:node_1288,prsc:2|A-5003-RGB,B-7242-OUT;n:type:ShaderForge.SFN_Tex2d,id:5003,x:32542,y:32565,ptovrint:False,ptlb:node_6250,ptin:_node_6250,varname:node_6250,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:b41033a812e862a4cb46229b6d294e3d,ntxv:0,isnm:False;proporder:4842-2586-4850-6380-5003-7143-170;pass:END;sub:END;*/

Shader "Shader Forge/liuguang01" {
    Properties {
        _Color_copy ("Color_copy", Color) = (1,1,1,1)
        _node_2120 ("node_2120", 2D) = "white" {}
        _node_5713 ("node_5713", 2D) = "white" {}
        _node_2985 ("node_2985", Range(0, 10)) = 6.923077
        _node_6250 ("node_6250", 2D) = "white" {}
        _node_7331 ("node_7331", 2D) = "white" {}
        _node_4327 ("node_4327", Range(0, 1)) = 0.6685619
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
                float4 node_6121 = _Time + _TimeEditor;
                float2 node_8372 = (i.uv0+node_6121.g*float2(0.1,0.1));
                float4 _node_7331_var = tex2D(_node_7331,TRANSFORM_TEX(node_8372, _node_7331));
                float2 node_1506 = ((i.uv0+node_6121.g*float2(0.1,0.1))+(_node_4327*_node_7331_var.r));
                float4 _node_2120_var = tex2D(_node_2120,TRANSFORM_TEX(node_1506, _node_2120));
                float3 emissive = (_node_6250_var.rgb*(_node_2985*(_node_5713_var.rgb*(_Color_copy.rgb*_node_2120_var.rgb))));
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
