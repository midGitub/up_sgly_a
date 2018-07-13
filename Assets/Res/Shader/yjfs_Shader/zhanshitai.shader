// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'
// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.28 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.28;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:0,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:4013,x:32770,y:32789,varname:node_4013,prsc:2|diff-7512-OUT,emission-7512-OUT;n:type:ShaderForge.SFN_Tex2d,id:8125,x:30934,y:32913,ptovrint:False,ptlb:node_8125,ptin:_node_8125,varname:node_8125,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:708d6d516b2264940a4d88e5ed0361fb,ntxv:0,isnm:False|UVIN-5185-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:4112,x:31572,y:32932,ptovrint:False,ptlb:node_4112,ptin:_node_4112,varname:node_4112,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:920d31ee27450b8409d0c014cd2a3c7e,ntxv:0,isnm:False|UVIN-3116-OUT;n:type:ShaderForge.SFN_Panner,id:5185,x:30689,y:32817,varname:node_5185,prsc:2,spu:0.01,spv:-0.05|UVIN-8606-UVOUT;n:type:ShaderForge.SFN_Add,id:3116,x:31386,y:32893,varname:node_3116,prsc:2|A-3121-UVOUT,B-8367-OUT;n:type:ShaderForge.SFN_TexCoord,id:6395,x:31081,y:32587,varname:node_6395,prsc:2,uv:0;n:type:ShaderForge.SFN_Panner,id:3121,x:31266,y:32587,varname:node_3121,prsc:2,spu:0.05,spv:-0.1|UVIN-6395-UVOUT;n:type:ShaderForge.SFN_Multiply,id:7795,x:31111,y:33040,varname:node_7795,prsc:2|A-8125-R,B-1699-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1699,x:30909,y:33123,ptovrint:False,ptlb:node_1699,ptin:_node_1699,varname:node_1699,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.6;n:type:ShaderForge.SFN_TexCoord,id:8606,x:30445,y:32817,varname:node_8606,prsc:2,uv:0;n:type:ShaderForge.SFN_Tex2d,id:5814,x:30941,y:33278,ptovrint:False,ptlb:node_8125_copy,ptin:_node_8125_copy,varname:_node_8125_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:708d6d516b2264940a4d88e5ed0361fb,ntxv:0,isnm:False|UVIN-9301-UVOUT;n:type:ShaderForge.SFN_Panner,id:9301,x:30696,y:33182,varname:node_9301,prsc:2,spu:-0.05,spv:-0.1|UVIN-290-UVOUT;n:type:ShaderForge.SFN_Multiply,id:8014,x:31118,y:33405,varname:node_8014,prsc:2|A-5814-R,B-7699-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7699,x:30916,y:33488,ptovrint:False,ptlb:node_1699_copy,ptin:_node_1699_copy,varname:_node_1699_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.3;n:type:ShaderForge.SFN_TexCoord,id:290,x:30452,y:33182,varname:node_290,prsc:2,uv:0;n:type:ShaderForge.SFN_Add,id:8367,x:31356,y:33243,varname:node_8367,prsc:2|A-7795-OUT,B-8014-OUT;n:type:ShaderForge.SFN_Color,id:2443,x:31798,y:32582,ptovrint:False,ptlb:node_2443,ptin:_node_2443,varname:node_2443,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_ValueProperty,id:3905,x:31829,y:32751,ptovrint:False,ptlb:node_3905,ptin:_node_3905,varname:node_3905,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:3;n:type:ShaderForge.SFN_Multiply,id:1294,x:32108,y:32740,varname:node_1294,prsc:2|A-2443-RGB,B-3905-OUT;n:type:ShaderForge.SFN_Multiply,id:7512,x:32189,y:32929,varname:node_7512,prsc:2|A-1294-OUT,B-4112-RGB,C-5852-A;n:type:ShaderForge.SFN_VertexColor,id:5852,x:31862,y:33056,varname:node_5852,prsc:2;proporder:8125-4112-1699-5814-7699-2443-3905;pass:END;sub:END;*/

Shader "Shader Forge/zhanshitai" {
    Properties {
        _node_8125 ("node_8125", 2D) = "white" {}
        _node_4112 ("node_4112", 2D) = "white" {}
        _node_1699 ("node_1699", Float ) = 0.6
        _node_8125_copy ("node_8125_copy", 2D) = "white" {}
        _node_1699_copy ("node_1699_copy", Float ) = 0.3
        _node_2443 ("node_2443", Color) = (0.5,0.5,0.5,1)
        _node_3905 ("node_3905", Float ) = 3
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
            uniform float4 _LightColor0;
            uniform float4 _TimeEditor;
            uniform sampler2D _node_8125; uniform float4 _node_8125_ST;
            uniform sampler2D _node_4112; uniform float4 _node_4112_ST;
            uniform float _node_1699;
            uniform sampler2D _node_8125_copy; uniform float4 _node_8125_copy_ST;
            uniform float _node_1699_copy;
            uniform float4 _node_2443;
            uniform float _node_3905;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float4 vertexColor : COLOR;
                UNITY_FOG_COORDS(3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = 1;
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float4 node_9374 = _Time + _TimeEditor;
                float2 node_5185 = (i.uv0+node_9374.g*float2(0.01,-0.05));
                float4 _node_8125_var = tex2D(_node_8125,TRANSFORM_TEX(node_5185, _node_8125));
                float2 node_9301 = (i.uv0+node_9374.g*float2(-0.05,-0.1));
                float4 _node_8125_copy_var = tex2D(_node_8125_copy,TRANSFORM_TEX(node_9301, _node_8125_copy));
                float2 node_3116 = ((i.uv0+node_9374.g*float2(0.05,-0.1))+((_node_8125_var.r*_node_1699)+(_node_8125_copy_var.r*_node_1699_copy)));
                float4 _node_4112_var = tex2D(_node_4112,TRANSFORM_TEX(node_3116, _node_4112));
                float3 node_7512 = ((_node_2443.rgb*_node_3905)*_node_4112_var.rgb*i.vertexColor.a);
                float3 diffuseColor = node_7512;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
////// Emissive:
                float3 emissive = node_7512;
/// Final Color:
                float3 finalColor = diffuse + emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd
            #pragma multi_compile_fog
            #pragma exclude_renderers xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform float4 _TimeEditor;
            uniform sampler2D _node_8125; uniform float4 _node_8125_ST;
            uniform sampler2D _node_4112; uniform float4 _node_4112_ST;
            uniform float _node_1699;
            uniform sampler2D _node_8125_copy; uniform float4 _node_8125_copy_ST;
            uniform float _node_1699_copy;
            uniform float4 _node_2443;
            uniform float _node_3905;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float4 vertexColor : COLOR;
                LIGHTING_COORDS(3,4)
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float4 node_764 = _Time + _TimeEditor;
                float2 node_5185 = (i.uv0+node_764.g*float2(0.01,-0.05));
                float4 _node_8125_var = tex2D(_node_8125,TRANSFORM_TEX(node_5185, _node_8125));
                float2 node_9301 = (i.uv0+node_764.g*float2(-0.05,-0.1));
                float4 _node_8125_copy_var = tex2D(_node_8125_copy,TRANSFORM_TEX(node_9301, _node_8125_copy));
                float2 node_3116 = ((i.uv0+node_764.g*float2(0.05,-0.1))+((_node_8125_var.r*_node_1699)+(_node_8125_copy_var.r*_node_1699_copy)));
                float4 _node_4112_var = tex2D(_node_4112,TRANSFORM_TEX(node_3116, _node_4112));
                float3 node_7512 = ((_node_2443.rgb*_node_3905)*_node_4112_var.rgb*i.vertexColor.a);
                float3 diffuseColor = node_7512;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
