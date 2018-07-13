// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.28 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.28;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:0,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:4013,x:34161,y:32468,varname:node_4013,prsc:2|emission-1714-OUT;n:type:ShaderForge.SFN_Multiply,id:774,x:33118,y:32620,varname:node_774,prsc:2|A-1048-OUT,B-1809-OUT;n:type:ShaderForge.SFN_Slider,id:1048,x:32520,y:32421,ptovrint:False,ptlb:node_1048,ptin:_node_1048,varname:node_1048,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:3;n:type:ShaderForge.SFN_Multiply,id:6679,x:33412,y:32541,varname:node_6679,prsc:2|A-4688-RGB,B-774-OUT;n:type:ShaderForge.SFN_Tex2d,id:4688,x:33188,y:32328,ptovrint:False,ptlb:node_4688,ptin:_node_4688,varname:node_4688,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:5dc24804c06a15d4995fa856c6a5e44a,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:1714,x:33711,y:32442,varname:node_1714,prsc:2|A-6999-RGB,B-6679-OUT;n:type:ShaderForge.SFN_Tex2d,id:6999,x:33479,y:32329,ptovrint:False,ptlb:node_6999,ptin:_node_6999,varname:node_6999,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:b41033a812e862a4cb46229b6d294e3d,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Color,id:429,x:32580,y:32568,ptovrint:False,ptlb:node_429,ptin:_node_429,varname:node_429,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:1809,x:32834,y:32788,varname:node_1809,prsc:2|A-429-RGB,B-3691-OUT;n:type:ShaderForge.SFN_Tex2d,id:1843,x:32140,y:33208,ptovrint:False,ptlb:node_1843,ptin:_node_1843,varname:node_1843,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:f2af4644ad0957b4c883b0d14cac884d,ntxv:0,isnm:False|UVIN-4144-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:4253,x:31514,y:33141,varname:node_4253,prsc:2,uv:0;n:type:ShaderForge.SFN_Panner,id:4144,x:31926,y:33208,varname:node_4144,prsc:2,spu:1,spv:1|UVIN-4253-UVOUT;n:type:ShaderForge.SFN_Multiply,id:3691,x:32499,y:33181,varname:node_3691,prsc:2|A-1843-RGB,B-7510-OUT;n:type:ShaderForge.SFN_Slider,id:7510,x:31926,y:33413,ptovrint:False,ptlb:node_7510,ptin:_node_7510,varname:node_7510,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;proporder:1048-4688-6999-429-1843-7510;pass:END;sub:END;*/

Shader "Shader Forge/xiantiaoguang" {
    Properties {
        _node_1048 ("node_1048", Range(0, 3)) = 1
        _node_4688 ("node_4688", 2D) = "white" {}
        _node_6999 ("node_6999", 2D) = "white" {}
        _node_429 ("node_429", Color) = (0.5,0.5,0.5,1)
        _node_1843 ("node_1843", 2D) = "white" {}
        _node_7510 ("node_7510", Range(0, 1)) = 1
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
            uniform float _node_1048;
            uniform sampler2D _node_4688; uniform float4 _node_4688_ST;
            uniform sampler2D _node_6999; uniform float4 _node_6999_ST;
            uniform float4 _node_429;
            uniform sampler2D _node_1843; uniform float4 _node_1843_ST;
            uniform float _node_7510;
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
                float4 _node_6999_var = tex2D(_node_6999,TRANSFORM_TEX(i.uv0, _node_6999));
                float4 _node_4688_var = tex2D(_node_4688,TRANSFORM_TEX(i.uv0, _node_4688));
                float4 node_8189 = _Time + _TimeEditor;
                float2 node_4144 = (i.uv0+node_8189.g*float2(1,1));
                float4 _node_1843_var = tex2D(_node_1843,TRANSFORM_TEX(node_4144, _node_1843));
                float3 emissive = (_node_6999_var.rgb*(_node_4688_var.rgb*(_node_1048*(_node_429.rgb*(_node_1843_var.rgb*_node_7510)))));
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
