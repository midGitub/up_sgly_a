/*
 使用offset指令，这种方法能够避免法线外拓方法中产生的法线过渡不均匀的问题，但同时会产生新的问题，将普通物体置于其和相机之间有时候会，产生显示错误，出现小黑点
*/

Shader "GW/Cartoon_Offset" {
    Properties {
        _MainTex ("Texture", 2D) = "white" { }
    }
    SubShader
    {
        //描边
        pass
        {
            Cull front
            //offset -5,-1
            offset 1,1
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            sampler2D _MainTex;
            float4 _MainTex_ST;
            struct v2f {
                float4  pos : SV_POSITION;
                float2  uv : TEXCOORD0;
            } ;
            v2f vert (appdata_base v)
            {
                v2f o;
                o.pos = UnityObjectToClipPos(v.vertex);
                o.uv = TRANSFORM_TEX(v.texcoord,_MainTex);
                return o;
            }
            float4 frag (v2f i) : COLOR
            {
                return float4(0,0,0,0);
            }
            ENDCG
        }
        //绘制物体
        pass
        {
            //offset 2,-1
            offset 1,1
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            sampler2D _MainTex;
            float4 _MainTex_ST;
            struct v2f {
                float4  pos : SV_POSITION;
                float2  uv : TEXCOORD0;
            } ;
            v2f vert (appdata_base v)
            {
                v2f o;
                o.pos = UnityObjectToClipPos(v.vertex);
                o.uv = TRANSFORM_TEX(v.texcoord,_MainTex);
                return o;
            }
            float4 frag (v2f i) : COLOR
            {
                float4 texCol = tex2D(_MainTex,i.uv);
                float4 outp = texCol;
                return outp;
            }
            ENDCG
        }
    }
}

