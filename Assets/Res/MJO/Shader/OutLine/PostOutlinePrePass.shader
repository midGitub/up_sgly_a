// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

Shader "GW/OutLine/PostOutLinePrePass"
{
    Properties{  
        _OutLineColor ("OutLineColor", Color) = (1,0,1,1)    
    } 
    //子着色器    
    SubShader  
    {  
        //描边使用两个Pass，第一个pass沿法线挤出一点，只输出描边的颜色  
        Pass  
        {     
            Tags { "RenderType" = "Opaque" }
            CGPROGRAM  
                #include "UnityCG.cginc"
                
                struct v2f  
                {  
                    float4 pos : SV_POSITION;  
                };  
                  
                v2f vert(appdata_full v)  
                {  
                    v2f o;  
                    o.pos = UnityObjectToClipPos(v.vertex);  
                    return o;  
                }  

                uniform fixed4 _OutLineColor;

                fixed4 frag(v2f i) : SV_Target  
                {  
                    //这个Pass直接输出描边颜色  
                    return fixed4(_OutLineColor.r,_OutLineColor.g,1,1);  
                    //return _OutLineColor;
                    //return fixed4(1,1,0,1);  
                }  
                  
                //使用vert函数和frag函数  
                #pragma vertex vert  
                #pragma fragment frag  
            ENDCG  
        }  
    }  
}  