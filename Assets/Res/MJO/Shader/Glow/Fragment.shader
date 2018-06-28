Shader "GW/FragmentShader" {
properties{
_SpecularColor("SpecularColor",color)=(1,1,1,1)
_Shininess("Shininess",range(1,8))=4

}
    SubShader {
        PASS{
        tags{"LightMode"="ForwardBase"}     
        CGPROGRAM
        #pragma vertex vert  
        #pragma fragment frag

        #include "UnityCG.cginc"
        #include "Lighting.cginc"


        float4 _SpecularColor;
        float _Shininess;


        struct v2f{
        float4 pos:POSITION;
        float3 normal1:TEXCOORD0;
        float4 vertex1:TEXCOORD1;
        };  

        v2f vert(appdata_base v){
        v2f o;
        o.pos=UnityObjectToClipPos(v.vertex);
        o.normal1=v.normal;
        o.vertex1=v.vertex;

        return o;
        }

        float4 frag(v2f IN):COLOR{

        float4 col= UNITY_LIGHTMODEL_AMBIENT;
        float3 N=normalize(UnityObjectToWorldNormal(IN.normal1));
        float3 worldPos=mul(unity_ObjectToWorld,IN.vertex1).xyz;
        float3 V=normalize(_WorldSpaceCameraPos.xyz-worldPos);
        float diffuseScale=pow(1.0-saturate(dot(V,N)),_Shininess);
        col+=_LightColor0*diffuseScale;
        return col;
        }
        ENDCG
        }
    }
    FallBack "Diffuse"

}