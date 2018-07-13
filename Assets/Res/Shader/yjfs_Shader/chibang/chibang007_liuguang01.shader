// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.28 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.28;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:0,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:4013,x:33202,y:32688,varname:node_4013,prsc:2|emission-6542-OUT;n:type:ShaderForge.SFN_Color,id:1304,x:32588,y:32471,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_1304,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Tex2d,id:4174,x:32064,y:33349,ptovrint:False,ptlb:node_2120,ptin:_node_2120,varname:node_2120,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:8d3305e2c86b92f409e47327f9362667,ntxv:0,isnm:False|UVIN-3678-OUT;n:type:ShaderForge.SFN_TexCoord,id:6285,x:31082,y:33373,varname:node_6285,prsc:2,uv:0;n:type:ShaderForge.SFN_Panner,id:4938,x:31328,y:33392,varname:node_4938,prsc:2,spu:0.1,spv:0.1|UVIN-6285-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:3150,x:31487,y:33392,ptovrint:False,ptlb:node_7331,ptin:_node_7331,varname:node_7331,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:f2af4644ad0957b4c883b0d14cac884d,ntxv:0,isnm:False|UVIN-4938-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:6311,x:32207,y:32955,ptovrint:False,ptlb:node_5713,ptin:_node_5713,varname:node_5713,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:88faf2ecddbb3f74d93f46d8a38095fb,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Panner,id:1453,x:31530,y:33107,varname:node_1453,prsc:2,spu:0.1,spv:0.1|UVIN-9309-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:9309,x:31260,y:33114,varname:node_9309,prsc:2,uv:0;n:type:ShaderForge.SFN_Multiply,id:3126,x:31705,y:33450,varname:node_3126,prsc:2|A-5230-OUT,B-3150-R;n:type:ShaderForge.SFN_Slider,id:5230,x:31373,y:33281,ptovrint:False,ptlb:node_4327,ptin:_node_4327,varname:node_4327,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.3032618,max:1;n:type:ShaderForge.SFN_Add,id:3678,x:31856,y:33202,varname:node_3678,prsc:2|A-1453-UVOUT,B-3126-OUT;n:type:ShaderForge.SFN_Multiply,id:393,x:32406,y:33079,varname:node_393,prsc:2|A-6311-RGB,B-4174-RGB;n:type:ShaderForge.SFN_Multiply,id:2118,x:32560,y:33031,varname:node_2118,prsc:2|A-3273-OUT,B-393-OUT;n:type:ShaderForge.SFN_Slider,id:3273,x:32222,y:32783,ptovrint:False,ptlb:node_2985,ptin:_node_2985,varname:node_2985,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:6.923077,max:10;n:type:ShaderForge.SFN_Multiply,id:6542,x:32882,y:32692,varname:node_6542,prsc:2|A-1304-RGB,B-2118-OUT;proporder:1304-4174-6311-3273-3150-5230;pass:END;sub:END;*/

Shader "Shader Forge/chibang007_liuguang01" {
    Properties {
        _Color ("Color", Color) = (1,1,1,1)
        _node_2120 ("node_2120", 2D) = "white" {}
        _node_5713 ("node_5713", 2D) = "white" {}
        _node_2985 ("node_2985", Range(0, 10)) = 6.923077
        _node_7331 ("node_7331", 2D) = "white" {}
        _node_4327 ("node_4327", Range(0, 1)) = 0.3032618
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
            uniform sampler2D _node_2120; uniform float4 _node_2120_ST;
            uniform sampler2D _node_7331; uniform float4 _node_7331_ST;
            uniform sampler2D _node_5713; uniform float4 _node_5713_ST;
            uniform float _node_4327;
            uniform float _node_2985;
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
                float4 _node_5713_var = tex2D(_node_5713,TRANSFORM_TEX(i.uv0, _node_5713));
                float4 node_5263 = _Time + _TimeEditor;
                float2 node_4938 = (i.uv0+node_5263.g*float2(0.1,0.1));
                float4 _node_7331_var = tex2D(_node_7331,TRANSFORM_TEX(node_4938, _node_7331));
                float2 node_3678 = ((i.uv0+node_5263.g*float2(0.1,0.1))+(_node_4327*_node_7331_var.r));
                float4 _node_2120_var = tex2D(_node_2120,TRANSFORM_TEX(node_3678, _node_2120));
                float3 emissive = (_Color.rgb*(_node_2985*(_node_5713_var.rgb*_node_2120_var.rgb)));
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
