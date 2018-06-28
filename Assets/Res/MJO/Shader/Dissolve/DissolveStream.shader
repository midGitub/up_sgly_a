// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'
//流光溶解效果     
      
Shader "GW/Dissolve/DissolveStream"  
{  
    Properties{  
        _Diffuse("Diffuse", Color) = (1,1,1,1)  
        _DissolveColor("Dissolve Color", Color) = (0,0,0,0)  
        _MainTex("Base 2D", 2D) = "white"{}  
        _ColorFactor("ColorFactor", Range(0,1)) = 0.7  
        _DissolveThreshold("DissolveThreshold", Float) = 0    
    }  
      
    CGINCLUDE  
    #include "Lighting.cginc"  
    uniform fixed4 _Diffuse;  
    uniform fixed4 _DissolveColor;  
    uniform sampler2D _MainTex;  
    uniform float4 _MainTex_ST;  
    uniform float _ColorFactor;  
    uniform float _DissolveThreshold;    
      
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
        //这里控制溶解方向
        float factor = i.objPos.y - _DissolveThreshold;  
        clip(factor);   
        //Diffuse + Ambient光照计算  
        fixed3 worldNormal = normalize(i.worldNormal);  
        fixed3 worldLightDir = normalize(_WorldSpaceLightPos0.xyz);  
        fixed3 lambert = saturate(dot(worldNormal, worldLightDir));  
        fixed3 albedo = lambert * _Diffuse.xyz * _LightColor0.xyz + UNITY_LIGHTMODEL_AMBIENT.xyz;  
        fixed3 color = tex2D(_MainTex, i.uv).rgb * albedo;  
        //等价于下面注释代码的操作  
        fixed lerpFactor = saturate(sign(_ColorFactor - factor));  
        return lerpFactor * _DissolveColor + (1 - lerpFactor) * fixed4(color, 1);  
        /* 
        if (factor < _ColorFactor) 
        { 
            return _DissolveColor; 
        } 
        return fixed4(color, 1);*/  
    }  
    ENDCG  
      
    SubShader  
    {  
        Tags{ "RenderType" = "Opaque" }  
        Pass  
        {  
            //不让模型穿帮，关掉了背面裁剪  
            Cull Off  
            CGPROGRAM  
            #pragma vertex vert  
            #pragma fragment frag     
            ENDCG  
        }  
    }  
    FallBack "Diffuse"  
}  