// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

//流光溶解效果2     
      
Shader "GW/Dissolve/DissolveStream2"  
{  
    Properties{  
        _Diffuse("Diffuse", Color) = (1,1,1,1)  
        _DissolveColor("Dissolve Color", Color) = (1,1,1,1)  
        _MainTex("Base 2D", 2D) = "white"{}  
        _DissolveMap("DissolveMap", 2D) = "white"{}  
        _DissolveThreshold("DissolveThreshold", Range(0,1)) = 0  
        _DissolveSpeedFactor("DissolveSpeed", Range(0,5)) = 2  
        _DissolveControl("ColorFactorB", Float) = 0  
    }  
      
    CGINCLUDE  
    #include "Lighting.cginc"  
    uniform fixed4 _Diffuse;  
    uniform fixed4 _DissolveColor;  
    uniform sampler2D _MainTex;  
    uniform float4 _MainTex_ST;  
    uniform sampler2D _DissolveMap;  
    uniform float _DissolveThreshold;  
    uniform float _DissolveSpeedFactor;  
    uniform float _DissolveControl;   
      
    struct v2f  
    {  
        float4 pos : SV_POSITION;  
        float3 worldNormal : TEXCOORD0;  
        float2 uv : TEXCOORD1;  
        float4 objPos : TEXCOORD2;   
    };  
      
    v2f vert(appdata_base v)  
    {  
        v2f o;  
        o.pos = UnityObjectToClipPos(v.vertex);  
        o.uv = TRANSFORM_TEX(v.texcoord, _MainTex);  
        o.worldNormal = mul(v.normal, (float3x3)unity_WorldToObject);  
        o.objPos = v.vertex;    
        return o;  
    }  
      
    fixed4 frag(v2f i) : SV_Target  
    {  
        fixed4 dissolve = tex2D(_DissolveMap, i.uv);  
        //Diffuse + Ambient光照计算  
        fixed3 worldNormal = normalize(i.worldNormal);  
        fixed3 worldLightDir = normalize(_WorldSpaceLightPos0.xyz);  
        fixed3 lambert = saturate(dot(worldNormal, worldLightDir));  
        fixed3 albedo = lambert * _Diffuse.xyz * _LightColor0.xyz + UNITY_LIGHTMODEL_AMBIENT.xyz;  
        fixed3 color = tex2D(_MainTex, i.uv).rgb * albedo;  

        //这里控制溶解方向
        float factor = i.objPos.y - _DissolveControl;  
        if(factor < 0)  
        {  
            clip(_DissolveThreshold - dissolve.r * abs(factor) * _DissolveSpeedFactor);  
            //_DissolveThreshold相关的颜色
            //return _DissolveColor;
        }  
        return fixed4(color, 1);  
    }  
    ENDCG  
      
    SubShader  
    {  
        Tags{ "RenderType" = "Opaque" }  
        Pass  
        {  
            Cull Off  
            CGPROGRAM  
            #pragma vertex vert  
            #pragma fragment frag     
            ENDCG  
        }  
    }  
    FallBack "Diffuse"  
}  