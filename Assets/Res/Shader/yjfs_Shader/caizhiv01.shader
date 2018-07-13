// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.28 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.28;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:4013,x:33507,y:32505,varname:node_4013,prsc:2|emission-5890-OUT,alpha-4405-OUT;n:type:ShaderForge.SFN_Tex2d,id:131,x:31906,y:32440,ptovrint:False,ptlb:teitu01,ptin:_teitu01,varname:node_131,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:5583f4ca609c1f64fb7ecb926f0f61b0,ntxv:2,isnm:False|UVIN-593-UVOUT;n:type:ShaderForge.SFN_Panner,id:593,x:31296,y:32374,varname:node_593,prsc:2,spu:0,spv:1|UVIN-8031-UVOUT,DIST-9142-OUT;n:type:ShaderForge.SFN_Slider,id:9142,x:30666,y:32556,ptovrint:False,ptlb:uv_c,ptin:_uv_c,varname:node_9142,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:5;n:type:ShaderForge.SFN_TexCoord,id:8031,x:30713,y:32309,varname:node_8031,prsc:2,uv:0;n:type:ShaderForge.SFN_Multiply,id:808,x:32356,y:32631,varname:node_808,prsc:2|A-131-RGB,B-6257-OUT;n:type:ShaderForge.SFN_Slider,id:6257,x:31861,y:32713,ptovrint:False,ptlb:liangdu,ptin:_liangdu,varname:node_6257,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:5,max:5;n:type:ShaderForge.SFN_Color,id:6672,x:32383,y:32407,ptovrint:False,ptlb:node_6672,ptin:_node_6672,varname:node_6672,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:9496,x:32601,y:32567,varname:node_9496,prsc:2|A-6672-RGB,B-808-OUT;n:type:ShaderForge.SFN_Multiply,id:5890,x:32943,y:32367,varname:node_5890,prsc:2|A-9281-RGB,B-9496-OUT;n:type:ShaderForge.SFN_Tex2d,id:9281,x:32682,y:32240,ptovrint:False,ptlb:node_9281,ptin:_node_9281,varname:node_9281,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:b6292640c2fa0c44a9e2bdabc129ab1b,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:526,x:32270,y:32877,ptovrint:False,ptlb:node_526,ptin:_node_526,varname:node_526,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:855ad9ac0446f204bac1d41d1357127b,ntxv:0,isnm:False|UVIN-593-UVOUT;n:type:ShaderForge.SFN_Slider,id:8488,x:32164,y:33112,ptovrint:False,ptlb:liangdu_a,ptin:_liangdu_a,varname:node_8488,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:5410,x:32615,y:32965,varname:node_5410,prsc:2|A-526-A,B-8488-OUT;n:type:ShaderForge.SFN_Multiply,id:103,x:33301,y:32376,varname:node_103,prsc:2|A-6069-RGB;n:type:ShaderForge.SFN_Tex2d,id:6069,x:33143,y:32190,ptovrint:False,ptlb:node_6069,ptin:_node_6069,varname:node_6069,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:92e64a6c7d1393c41a119da40c761df1,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:4405,x:32966,y:32723,varname:node_4405,prsc:2|A-9281-A,B-5410-OUT;proporder:131-9142-6257-6672-9281-526-8488-6069;pass:END;sub:END;*/

Shader "Shader Forge/caizhiv01" {
    Properties {
        _teitu01 ("teitu01", 2D) = "black" {}
        _uv_c ("uv_c", Range(0, 5)) = 0
        _liangdu ("liangdu", Range(0, 5)) = 5
        _node_6672 ("node_6672", Color) = (0.5,0.5,0.5,1)
        _node_9281 ("node_9281", 2D) = "white" {}
        _node_526 ("node_526", 2D) = "white" {}
        _liangdu_a ("liangdu_a", Range(0, 1)) = 0
        _node_6069 ("node_6069", 2D) = "white" {}
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
            Blend SrcAlpha OneMinusSrcAlpha
            Cull Off
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma exclude_renderers xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform sampler2D _teitu01; uniform float4 _teitu01_ST;
            uniform float _uv_c;
            uniform float _liangdu;
            uniform float4 _node_6672;
            uniform sampler2D _node_9281; uniform float4 _node_9281_ST;
            uniform sampler2D _node_526; uniform float4 _node_526_ST;
            uniform float _liangdu_a;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos(v.vertex );
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
////// Lighting:
////// Emissive:
                float4 _node_9281_var = tex2D(_node_9281,TRANSFORM_TEX(i.uv0, _node_9281));
                float2 node_593 = (i.uv0+_uv_c*float2(0,1));
                float4 _teitu01_var = tex2D(_teitu01,TRANSFORM_TEX(node_593, _teitu01));
                float3 emissive = (_node_9281_var.rgb*(_node_6672.rgb*(_teitu01_var.rgb*_liangdu)));
                float3 finalColor = emissive;
                float4 _node_526_var = tex2D(_node_526,TRANSFORM_TEX(node_593, _node_526));
                return fixed4(finalColor,(_node_9281_var.a*(_node_526_var.a*_liangdu_a)));
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
