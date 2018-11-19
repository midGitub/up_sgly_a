// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:0,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:4013,x:33151,y:32595,varname:node_4013,prsc:2|emission-483-OUT,custl-483-OUT,alpha-657-A;n:type:ShaderForge.SFN_Color,id:1304,x:31898,y:33057,ptovrint:False,ptlb:fresnel_color,ptin:_fresnel_color,varname:node_1304,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.8390467,c3:0.4926471,c4:1;n:type:ShaderForge.SFN_Tex2d,id:9936,x:31806,y:32869,ptovrint:False,ptlb:node_9936,ptin:_node_9936,varname:node_9936,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:4ce245424233cbf48be5a18204df7f69,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:4641,x:32231,y:32901,varname:node_4641,prsc:2|A-9936-RGB,B-5276-OUT;n:type:ShaderForge.SFN_Vector1,id:5276,x:31951,y:32954,varname:node_5276,prsc:2,v1:2;n:type:ShaderForge.SFN_Tex2d,id:8341,x:32288,y:32655,ptovrint:False,ptlb:node_8341,ptin:_node_8341,varname:node_8341,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:dff6ad092ee8bf14da61d73d636905df,ntxv:0,isnm:False;n:type:ShaderForge.SFN_TexCoord,id:6791,x:31866,y:32515,varname:node_6791,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Time,id:497,x:31379,y:32657,varname:node_497,prsc:2;n:type:ShaderForge.SFN_Multiply,id:8885,x:31654,y:32638,varname:node_8885,prsc:2|A-5985-OUT,B-497-TSL;n:type:ShaderForge.SFN_ValueProperty,id:5985,x:31384,y:32563,ptovrint:False,ptlb:x,ptin:_x,varname:node_5985,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:2004,x:31388,y:32858,ptovrint:False,ptlb:y,ptin:_y,varname:node_2004,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Multiply,id:2767,x:31649,y:32818,varname:node_2767,prsc:2|A-497-TSL,B-2004-OUT;n:type:ShaderForge.SFN_Append,id:9874,x:31874,y:32683,varname:node_9874,prsc:2|A-8885-OUT,B-2767-OUT;n:type:ShaderForge.SFN_Add,id:3969,x:32101,y:32555,varname:node_3969,prsc:2|A-6791-UVOUT,B-9874-OUT;n:type:ShaderForge.SFN_Multiply,id:7854,x:32477,y:32723,varname:node_7854,prsc:2|A-8341-RGB,B-4641-OUT;n:type:ShaderForge.SFN_Fresnel,id:5187,x:32052,y:33301,varname:node_5187,prsc:2|EXP-6600-OUT;n:type:ShaderForge.SFN_Slider,id:6600,x:31591,y:33196,ptovrint:False,ptlb:fresnel_power,ptin:_fresnel_power,varname:node_6600,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:3.94422,max:5;n:type:ShaderForge.SFN_Multiply,id:8992,x:32278,y:33146,varname:node_8992,prsc:2|A-1304-RGB,B-5187-OUT;n:type:ShaderForge.SFN_Add,id:3754,x:32687,y:32870,varname:node_3754,prsc:2|A-7854-OUT,B-8635-OUT;n:type:ShaderForge.SFN_Multiply,id:8635,x:32554,y:33169,varname:node_8635,prsc:2|A-8992-OUT,B-859-OUT;n:type:ShaderForge.SFN_Vector1,id:859,x:32352,y:33382,varname:node_859,prsc:2,v1:3;n:type:ShaderForge.SFN_Slider,id:7103,x:32477,y:32564,ptovrint:False,ptlb:node_7103,ptin:_node_7103,varname:node_7103,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Multiply,id:483,x:32825,y:32713,varname:node_483,prsc:2|A-7103-OUT,B-3754-OUT;n:type:ShaderForge.SFN_Color,id:657,x:32859,y:32995,ptovrint:False,ptlb:xiaoshi,ptin:_xiaoshi,varname:node_657,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0,c3:0,c4:1;proporder:1304-9936-8341-5985-2004-6600-7103-657;pass:END;sub:END;*/

Shader "Custom/sf_boss_深渊妖后" {
    Properties {
        _fresnel_color ("fresnel_color", Color) = (1,0.8390467,0.4926471,1)
        _node_9936 ("node_9936", 2D) = "white" {}
        _node_8341 ("node_8341", 2D) = "white" {}
        _x ("x", Float ) = 0
        _y ("y", Float ) = 0
        _fresnel_power ("fresnel_power", Range(0, 5)) = 3.94422
        _node_7103 ("node_7103", Range(0, 1)) = 1
        _xiaoshi ("xiaoshi", Color) = (0,0,0,1)
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
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal d3d11_9x n3ds wiiu 
            #pragma target 3.0
            uniform float4 _fresnel_color;
            uniform sampler2D _node_9936; uniform float4 _node_9936_ST;
            uniform sampler2D _node_8341; uniform float4 _node_8341_ST;
            uniform float _fresnel_power;
            uniform float _node_7103;
            uniform float4 _xiaoshi;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                UNITY_FOG_COORDS(3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
////// Lighting:
////// Emissive:
                float4 _node_8341_var = tex2D(_node_8341,TRANSFORM_TEX(i.uv0, _node_8341));
                float4 _node_9936_var = tex2D(_node_9936,TRANSFORM_TEX(i.uv0, _node_9936));
                float3 node_483 = (_node_7103*((_node_8341_var.rgb*(_node_9936_var.rgb*2.0))+((_fresnel_color.rgb*pow(1.0-max(0,dot(normalDirection, viewDirection)),_fresnel_power))*3.0)));
                float3 emissive = node_483;
                float3 finalColor = emissive + node_483;
                fixed4 finalRGBA = fixed4(finalColor,_xiaoshi.a);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
