Shader "GW/GuideMask"
{
	Properties
	{
		[PerRendererData] _MainTex("Sprite Texture", 2D) = "white" {}
		_Color("Tint", Color) = (1,1,1,1)

		_StencilComp("Stencil Comparison", Float) = 8
		_Stencil("Stencil ID", Float) = 0
		_StencilOp("Stencil Operation", Float) = 0
		_StencilWriteMask("Stencil Write Mask", Float) = 255
		_StencilReadMask("Stencil Read Mask", Float) = 255

		_ColorMask("Color Mask", Float) = 15
		//中心
		_Origin("中心点坐标",Vector) = (0,0,0,0)
		_radius("半径",Float) = 100
		_width("宽",Float) = 200
		_height("高",Float) = 100
		//裁剪方式 0圆形 1圆形
		_MaskType("Type",Float) = 0
		[Toggle(UNITY_UI_ALPHACLIP)] _UseUIAlphaClip("Use Alpha Clip", Float) = 0
	}

	SubShader
	{
		Tags
		{
			"Queue" = "Transparent"  //渲染顺序：透明物体
			"IgnoreProjector" = "True" //不被Projectors影响
			"RenderType" = "Transparent" //渲染模式：透明物体
			"PreviewType" = "Plane"
			"CanUseSpriteAtlas" = "True"
		}

		Stencil //模板缓存
		{
			Ref[_Stencil]	//参考值
			Comp[_StencilComp]	//拿_StencilComp与参考值做比较
			Pass[_StencilOp] //当模板测试和深度测试都通过进行处理
			ReadMask[_StencilReadMask]	//读取bufferd的值
			WriteMask[_StencilWriteMask] //写入buffer值
		}

		Cull Off
		Lighting Off
		ZWrite Off	//关闭深度写
		ZTest[unity_GUIZTestMode]
		Blend SrcAlpha OneMinusSrcAlpha
		ColorMask[_ColorMask] //屏蔽的颜色输出

		Pass
		{
			Name "Default"
			CGPROGRAM
			#pragma vertex vert//定点着色器
			#pragma fragment frag//片段着色器
			#pragma target 2.0

			#include "UnityCG.cginc"
			#include "UnityUI.cginc"

			#pragma multi_compile __ UNITY_UI_ALPHACLIP

			struct appdata_t
			{
				float4 vertex : POSITION;//用模型的顶点坐标填充变量
				float4 color : COLOR;//存储颜色信息
				float2 texcoord : TEXCOORD0;//用模型的第一套纹理坐标填充变量
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct v2f
			{
				float4 vertex : SV_POSITION;//vertex变量包含了顶点在裁剪空间中的位置信息
				fixed4 color : COLOR;
				float2 texcoord : TEXCOORD0;
				float4 worldPosition : TEXCOORD1;
				UNITY_VERTEX_OUTPUT_STEREO
			};

			fixed4 _Color;
			fixed4 _TextureSampleAdd;
			float4 _ClipRect;
			float4 _Origin;
			float _radius;
			float _width;
			float _height;
			float _MaskType;

			v2f vert(appdata_t IN)
			{
				v2f OUT;
				UNITY_SETUP_INSTANCE_ID(IN);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(OUT);
				OUT.worldPosition = IN.vertex;
				OUT.vertex = UnityObjectToClipPos(OUT.worldPosition);

				OUT.texcoord = IN.texcoord;

				OUT.color = IN.color * _Color;
				return OUT;
			}

			sampler2D _MainTex;

			fixed4 frag(v2f IN) : SV_Target
			{
				float2 uv = IN.texcoord;
				half4 col = IN.color;

				half4 color = (tex2D(_MainTex,uv) + _TextureSampleAdd) * col; //tex2D在一张贴图中对一个点进行采样的方法
				color.a *= UnityGet2DClipping(IN.worldPosition.xy, _ClipRect);//判断2D空间中的一点是否在一个矩形区域中
				//clip(col.a);//如果输入向量中的任何元素小于0，则丢弃当前像素。
				#ifdef UNITY_UI_ALPHACLIP
				clip(color.a - 0.001);
				#endif
				//开始裁剪
				//外部直接给坐标 宽 高 GPU计算比率
				/*float posX = (_Origin.x + 640) / 1280;
				float posY = (_Origin.y + 360) / 720;
				float2 pos = float2(posX, posY);*/
				if (_MaskType == 0)//圆形
				{
					////posX = posX * 1280 / 720;
					////pos = float2(posX, posY);
					//float rid = _Origin.z / 720 / 2;
					////uv.x = uv.x * 1280 / 720;
					//float2 nor = uv - pos;
					//if (length(nor) < rid)
					//	color.a = 0;
					if (distance(IN.worldPosition.xy, _Origin.xy) < _radius)//distance返回两个输入点间的距离。
						color.a = 0;
				}
				else //矩形
				{
					/*float w = _Origin.z / 1280 / 2;
					float h = _Origin.w / 720 / 2;
					if (uv.x > pos.x - w && uv.x<pos.x + w && uv.y>pos.y - h && uv.y < pos.y + h)
						color.a = 0;*/
					if (distance(IN.worldPosition.x, _Origin.x) < _width && distance(IN.worldPosition.y, _Origin.y) < _height)
						color.a = 0;
				}

				return color;
			}
		ENDCG
		}
	}
}