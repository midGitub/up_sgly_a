// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'
// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.26 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.26;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:0,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.8805275,fgcg:0.5441177,fgcb:1,fgca:1,fgde:0.01,fgrn:50,fgrf:600,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:4013,x:33919,y:32470,varname:node_4013,prsc:2|diff-6676-OUT,normal-4623-OUT,emission-9013-OUT,alpha-5554-OUT;n:type:ShaderForge.SFN_Tex2d,id:8493,x:32596,y:32198,ptovrint:False,ptlb:Diffuse,ptin:_Diffuse,varname:node_8493,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:e6f8288974c664a309d6c66de636978c,ntxv:0,isnm:False|UVIN-8061-OUT;n:type:ShaderForge.SFN_Multiply,id:6676,x:33003,y:32262,varname:node_6676,prsc:2|A-4600-OUT,B-4757-OUT;n:type:ShaderForge.SFN_Slider,id:7536,x:31280,y:31618,ptovrint:False,ptlb:node_7536,ptin:_node_7536,varname:node_7536,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1.239624,max:3;n:type:ShaderForge.SFN_Vector3,id:4600,x:32758,y:32103,varname:node_4600,prsc:2,v1:3,v2:3,v3:3;n:type:ShaderForge.SFN_Tex2d,id:3197,x:32337,y:32993,ptovrint:False,ptlb:zhezhao,ptin:_zhezhao,varname:node_3197,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:3aa5d06603e49cf42b0f3e8d6385de35,ntxv:0,isnm:False|UVIN-2341-UVOUT;n:type:ShaderForge.SFN_Multiply,id:6665,x:33001,y:32698,varname:node_6665,prsc:2|A-8178-RGB,B-6760-OUT;n:type:ShaderForge.SFN_Tex2d,id:8178,x:32247,y:32585,ptovrint:False,ptlb:Normal,ptin:_Normal,varname:_node_3197_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:6bdb88f4d32802543b05f15f01b9f0fd,ntxv:0,isnm:False|UVIN-4424-OUT;n:type:ShaderForge.SFN_TexCoord,id:5835,x:31823,y:33103,varname:node_5835,prsc:2,uv:0;n:type:ShaderForge.SFN_Panner,id:2341,x:32083,y:33059,varname:node_2341,prsc:2,spu:0,spv:0|UVIN-5835-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:2878,x:31441,y:32501,ptovrint:False,ptlb:niuqu_B_001,ptin:_niuqu_B_001,varname:node_2878,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:4acf5b5fb51eb7c45b0a23e232e2ad25,ntxv:0,isnm:False|UVIN-8826-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:6587,x:31444,y:32355,varname:node_6587,prsc:2,uv:0;n:type:ShaderForge.SFN_Multiply,id:4551,x:31687,y:32422,varname:node_4551,prsc:2|A-6587-UVOUT,B-2878-B;n:type:ShaderForge.SFN_Panner,id:8826,x:31257,y:32501,varname:node_8826,prsc:2,spu:0,spv:0.025|UVIN-4963-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:4963,x:31061,y:32501,varname:node_4963,prsc:2,uv:0;n:type:ShaderForge.SFN_Tex2d,id:6733,x:31481,y:32815,ptovrint:False,ptlb:niuqu_b_002,ptin:_niuqu_b_002,varname:_node_2878_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:4acf5b5fb51eb7c45b0a23e232e2ad25,ntxv:0,isnm:False|UVIN-8798-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:492,x:31484,y:32669,varname:node_492,prsc:2,uv:0;n:type:ShaderForge.SFN_Multiply,id:3441,x:31658,y:32669,varname:node_3441,prsc:2|A-492-UVOUT,B-6733-G;n:type:ShaderForge.SFN_Panner,id:8798,x:31297,y:32815,varname:node_8798,prsc:2,spu:0.01,spv:0|UVIN-1237-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:1237,x:31101,y:32815,varname:node_1237,prsc:2,uv:0;n:type:ShaderForge.SFN_Multiply,id:3932,x:31865,y:32600,varname:node_3932,prsc:2|A-4551-OUT,B-3441-OUT;n:type:ShaderForge.SFN_Vector1,id:3688,x:31702,y:32968,varname:node_3688,prsc:2,v1:10;n:type:ShaderForge.SFN_Multiply,id:6760,x:32541,y:32963,varname:node_6760,prsc:2|A-8178-A,B-3197-R;n:type:ShaderForge.SFN_Vector1,id:3973,x:32263,y:32910,varname:node_3973,prsc:2,v1:1;n:type:ShaderForge.SFN_TexCoord,id:7836,x:31957,y:32347,varname:node_7836,prsc:2,uv:0;n:type:ShaderForge.SFN_Panner,id:3072,x:32161,y:32347,varname:node_3072,prsc:2,spu:0.01,spv:0.02|UVIN-7836-UVOUT;n:type:ShaderForge.SFN_Multiply,id:4757,x:32758,y:32315,varname:node_4757,prsc:2|A-8493-RGB,B-6387-OUT;n:type:ShaderForge.SFN_Vector1,id:6387,x:32596,y:32383,varname:node_6387,prsc:2,v1:0.3;n:type:ShaderForge.SFN_Add,id:3547,x:32591,y:32746,varname:node_3547,prsc:2|A-8178-RGB,B-6760-OUT;n:type:ShaderForge.SFN_Multiply,id:4189,x:32807,y:32500,varname:node_4189,prsc:2|A-1720-OUT,B-3547-OUT;n:type:ShaderForge.SFN_Vector3,id:1720,x:32593,y:32464,varname:node_1720,prsc:2,v1:0.12,v2:0.23,v3:0.2;n:type:ShaderForge.SFN_Multiply,id:5554,x:33321,y:32958,varname:node_5554,prsc:2|A-3139-OUT,B-4832-OUT;n:type:ShaderForge.SFN_Vector1,id:3139,x:32959,y:32877,varname:node_3139,prsc:2,v1:0.9;n:type:ShaderForge.SFN_Add,id:3249,x:32008,y:31900,varname:node_3249,prsc:2|A-4800-UVOUT,B-8881-R;n:type:ShaderForge.SFN_TexCoord,id:4800,x:31853,y:31746,varname:node_4800,prsc:2,uv:0;n:type:ShaderForge.SFN_Tex2d,id:8881,x:31706,y:31902,ptovrint:False,ptlb:niuqu_A_001,ptin:_niuqu_A_001,varname:node_8881,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False|UVIN-5252-UVOUT;n:type:ShaderForge.SFN_Panner,id:5252,x:31508,y:31902,varname:node_5252,prsc:2,spu:0.05,spv:0.1|UVIN-4452-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:4452,x:31311,y:31918,varname:node_4452,prsc:2,uv:2;n:type:ShaderForge.SFN_Multiply,id:8061,x:32375,y:32259,varname:node_8061,prsc:2|A-4034-OUT,B-8551-OUT;n:type:ShaderForge.SFN_Add,id:7027,x:32015,y:32166,varname:node_7027,prsc:2|A-8002-UVOUT,B-9496-R;n:type:ShaderForge.SFN_TexCoord,id:8002,x:31860,y:32012,varname:node_8002,prsc:2,uv:0;n:type:ShaderForge.SFN_Tex2d,id:9496,x:31713,y:32168,ptovrint:False,ptlb:niuqu_A_002,ptin:_niuqu_A_002,varname:_node_8881_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False|UVIN-4854-UVOUT;n:type:ShaderForge.SFN_Panner,id:4854,x:31515,y:32168,varname:node_4854,prsc:2,spu:0.01,spv:0.002|UVIN-7840-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:7840,x:31318,y:32184,varname:node_7840,prsc:2,uv:0;n:type:ShaderForge.SFN_Multiply,id:4034,x:32198,y:32091,varname:node_4034,prsc:2|A-3249-OUT,B-7027-OUT;n:type:ShaderForge.SFN_Multiply,id:9013,x:33035,y:32451,varname:node_9013,prsc:2|A-2367-OUT,B-4189-OUT;n:type:ShaderForge.SFN_Vector1,id:2367,x:32793,y:32436,varname:node_2367,prsc:2,v1:2;n:type:ShaderForge.SFN_Add,id:1312,x:31907,y:32479,varname:node_1312,prsc:2|A-4551-OUT,B-3441-OUT;n:type:ShaderForge.SFN_Add,id:4424,x:32068,y:32585,varname:node_4424,prsc:2|A-1312-OUT,B-9356-UVOUT;n:type:ShaderForge.SFN_Panner,id:9356,x:31865,y:32822,varname:node_9356,prsc:2,spu:0.01,spv:0.02|UVIN-5855-UVOUT,DIST-3688-OUT;n:type:ShaderForge.SFN_TexCoord,id:5855,x:31702,y:32822,varname:node_5855,prsc:2,uv:0;n:type:ShaderForge.SFN_Vector1,id:8551,x:32145,y:32271,varname:node_8551,prsc:2,v1:0.2;n:type:ShaderForge.SFN_Multiply,id:4623,x:33534,y:32679,varname:node_4623,prsc:2|A-6916-OUT,B-6665-OUT;n:type:ShaderForge.SFN_Vector1,id:6916,x:33241,y:32598,varname:node_6916,prsc:2,v1:2.5;n:type:ShaderForge.SFN_Tex2d,id:7104,x:32683,y:33179,ptovrint:False,ptlb:maks,ptin:_maks,varname:node_7104,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:d984c2f0916b9db46932de5bdec02e5a,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:4832,x:33017,y:33048,varname:node_4832,prsc:2|A-6760-OUT,B-7104-A;proporder:8493-7536-3197-8178-2878-6733-8881-9496-7104;pass:END;sub:END;*/

Shader "Shader Forge/changjing_water_001" {
    Properties {
        _Diffuse ("Diffuse", 2D) = "white" {}
        _node_7536 ("node_7536", Range(0, 3)) = 1.239624
        _zhezhao ("zhezhao", 2D) = "white" {}
        _Normal ("Normal", 2D) = "white" {}
        _niuqu_B_001 ("niuqu_B_001", 2D) = "white" {}
        _niuqu_b_002 ("niuqu_b_002", 2D) = "white" {}
        _niuqu_A_001 ("niuqu_A_001", 2D) = "white" {}
        _niuqu_A_002 ("niuqu_A_002", 2D) = "white" {}
        _maks ("maks", 2D) = "white" {}
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
            #pragma multi_compile_fog
            #pragma exclude_renderers xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform float4 _TimeEditor;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform sampler2D _zhezhao; uniform float4 _zhezhao_ST;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform sampler2D _niuqu_B_001; uniform float4 _niuqu_B_001_ST;
            uniform sampler2D _niuqu_b_002; uniform float4 _niuqu_b_002_ST;
            uniform sampler2D _niuqu_A_001; uniform float4 _niuqu_A_001_ST;
            uniform sampler2D _niuqu_A_002; uniform float4 _niuqu_A_002_ST;
            uniform sampler2D _maks; uniform float4 _maks_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv2 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
                float3 normalDir : TEXCOORD3;
                float3 tangentDir : TEXCOORD4;
                float3 bitangentDir : TEXCOORD5;
                UNITY_FOG_COORDS(6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 node_4437 = _Time + _TimeEditor;
                float2 node_8826 = (i.uv0+node_4437.g*float2(0,0.025));
                float4 _niuqu_B_001_var = tex2D(_niuqu_B_001,TRANSFORM_TEX(node_8826, _niuqu_B_001));
                float2 node_4551 = (i.uv0*_niuqu_B_001_var.b);
                float2 node_8798 = (i.uv0+node_4437.g*float2(0.01,0));
                float4 _niuqu_b_002_var = tex2D(_niuqu_b_002,TRANSFORM_TEX(node_8798, _niuqu_b_002));
                float2 node_3441 = (i.uv0*_niuqu_b_002_var.g);
                float2 node_4424 = ((node_4551+node_3441)+(i.uv0+10.0*float2(0.01,0.02)));
                float4 _Normal_var = tex2D(_Normal,TRANSFORM_TEX(node_4424, _Normal));
                float2 node_2341 = (i.uv0+node_4437.g*float2(0,0));
                float4 _zhezhao_var = tex2D(_zhezhao,TRANSFORM_TEX(node_2341, _zhezhao));
                float node_6760 = (_Normal_var.a*_zhezhao_var.r);
                float3 normalLocal = (2.5*(_Normal_var.rgb*node_6760));
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
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
                float2 node_5252 = (i.uv2+node_4437.g*float2(0.05,0.1));
                float4 _niuqu_A_001_var = tex2D(_niuqu_A_001,TRANSFORM_TEX(node_5252, _niuqu_A_001));
                float2 node_4854 = (i.uv0+node_4437.g*float2(0.01,0.002));
                float4 _niuqu_A_002_var = tex2D(_niuqu_A_002,TRANSFORM_TEX(node_4854, _niuqu_A_002));
                float2 node_8061 = (((i.uv0+_niuqu_A_001_var.r)*(i.uv0+_niuqu_A_002_var.r))*0.2);
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(node_8061, _Diffuse));
                float3 diffuseColor = (float3(3,3,3)*(_Diffuse_var.rgb*0.3));
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
////// Emissive:
                float3 emissive = (2.0*(float3(0.12,0.23,0.2)*(_Normal_var.rgb+node_6760)));
/// Final Color:
                float3 finalColor = diffuse + emissive;
                float4 _maks_var = tex2D(_maks,TRANSFORM_TEX(i.uv0, _maks));
                fixed4 finalRGBA = fixed4(finalColor,(0.9*(node_6760*_maks_var.a)));
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
            Cull Off
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
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform sampler2D _zhezhao; uniform float4 _zhezhao_ST;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform sampler2D _niuqu_B_001; uniform float4 _niuqu_B_001_ST;
            uniform sampler2D _niuqu_b_002; uniform float4 _niuqu_b_002_ST;
            uniform sampler2D _niuqu_A_001; uniform float4 _niuqu_A_001_ST;
            uniform sampler2D _niuqu_A_002; uniform float4 _niuqu_A_002_ST;
            uniform sampler2D _maks; uniform float4 _maks_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv2 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
                float3 normalDir : TEXCOORD3;
                float3 tangentDir : TEXCOORD4;
                float3 bitangentDir : TEXCOORD5;
                LIGHTING_COORDS(6,7)
                UNITY_FOG_COORDS(8)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 node_8877 = _Time + _TimeEditor;
                float2 node_8826 = (i.uv0+node_8877.g*float2(0,0.025));
                float4 _niuqu_B_001_var = tex2D(_niuqu_B_001,TRANSFORM_TEX(node_8826, _niuqu_B_001));
                float2 node_4551 = (i.uv0*_niuqu_B_001_var.b);
                float2 node_8798 = (i.uv0+node_8877.g*float2(0.01,0));
                float4 _niuqu_b_002_var = tex2D(_niuqu_b_002,TRANSFORM_TEX(node_8798, _niuqu_b_002));
                float2 node_3441 = (i.uv0*_niuqu_b_002_var.g);
                float2 node_4424 = ((node_4551+node_3441)+(i.uv0+10.0*float2(0.01,0.02)));
                float4 _Normal_var = tex2D(_Normal,TRANSFORM_TEX(node_4424, _Normal));
                float2 node_2341 = (i.uv0+node_8877.g*float2(0,0));
                float4 _zhezhao_var = tex2D(_zhezhao,TRANSFORM_TEX(node_2341, _zhezhao));
                float node_6760 = (_Normal_var.a*_zhezhao_var.r);
                float3 normalLocal = (2.5*(_Normal_var.rgb*node_6760));
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float2 node_5252 = (i.uv2+node_8877.g*float2(0.05,0.1));
                float4 _niuqu_A_001_var = tex2D(_niuqu_A_001,TRANSFORM_TEX(node_5252, _niuqu_A_001));
                float2 node_4854 = (i.uv0+node_8877.g*float2(0.01,0.002));
                float4 _niuqu_A_002_var = tex2D(_niuqu_A_002,TRANSFORM_TEX(node_4854, _niuqu_A_002));
                float2 node_8061 = (((i.uv0+_niuqu_A_001_var.r)*(i.uv0+_niuqu_A_002_var.r))*0.2);
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(node_8061, _Diffuse));
                float3 diffuseColor = (float3(3,3,3)*(_Diffuse_var.rgb*0.3));
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
                float4 _maks_var = tex2D(_maks,TRANSFORM_TEX(i.uv0, _maks));
                fixed4 finalRGBA = fixed4(finalColor * (0.9*(node_6760*_maks_var.a)),0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
