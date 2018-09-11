using UnityEngine;
using System.Collections;
using System.Collections.Generic;

namespace AF
{
    //注意事项: 检查下是否勾选了 Static->BatchingStatic, 如果勾选,一定要去除勾选 !!!
    public class PrefabLightmapData : MonoBehaviour
    {
        //LightMap信息
        [System.Serializable]
        struct RendererInfo
        {
            public Renderer renderer;
            public int lightmapIndex;
            public Vector4 lightmapOffsetScale;
        }
        //场景中的Fog信息
        [System.Serializable]
        struct FogInfo
        {
            public bool fog;
            public FogMode fogMode;
            public Color fogColor;
            public float fogStartDistance;
            public float fogEndDistance;
            public float fogDensity;
        }
        [SerializeField]
        FogInfo m_fogInfo;

        [SerializeField]
        short m_lightmapsMode;

        //地形的LightMap信息
        [SerializeField]
        Terrain m_terrain;
        [SerializeField]
        RendererInfo m_terrainRendererInfo;

        [SerializeField]
        RendererInfo[] m_rendererInfo;

        [SerializeField]
        Texture2D[] m_lightmapColors;
        [SerializeField]
        Texture2D[] m_lightmapDirs;
        [SerializeField]
        Texture2D[] m_lightmapShadowMasks;

        LightmapData[] m_lightmapData;

        //设置光照信息
        [ContextMenu("SetUp")]
        public void SetUp()
        {
            m_lightmapData = new LightmapData[m_lightmapColors.Length];
            for (int i = 0; i < m_lightmapData.Length; i++)
            {
                m_lightmapData[i] = new LightmapData();
                m_lightmapData[i].lightmapColor = m_lightmapColors[i];
                m_lightmapData[i].lightmapDir = m_lightmapDirs[i];
                m_lightmapData[i].shadowMask = m_lightmapShadowMasks[i];
            }

            LightmapSettings.lightmapsMode = (LightmapsMode)m_lightmapsMode;
            LightmapSettings.lightmaps = m_lightmapData;

            _LoadLightmap();

            RenderSettings.fog = m_fogInfo.fog;
            RenderSettings.fogMode = m_fogInfo.fogMode;
            RenderSettings.fogColor = m_fogInfo.fogColor;
            RenderSettings.fogStartDistance = m_fogInfo.fogStartDistance;
            RenderSettings.fogEndDistance = m_fogInfo.fogEndDistance;
            RenderSettings.fogDensity = m_fogInfo.fogDensity;
        }

        void _LoadLightmap()
        {
            if (m_rendererInfo.Length <= 0) return;

            if (m_terrain != null)
            {
                m_terrain.lightmapScaleOffset = m_terrainRendererInfo.lightmapOffsetScale;
                m_terrain.lightmapIndex = m_terrainRendererInfo.lightmapIndex;
            }

            foreach (RendererInfo item in m_rendererInfo)
            {
                item.renderer.lightmapIndex = item.lightmapIndex;
                item.renderer.lightmapScaleOffset = item.lightmapOffsetScale;
            }
        }
#if UNITY_EDITOR
        [ContextMenu("Bake")]
        public void Bake()
        {
            UnityEditor.LightmapEditorSettings.maxAtlasHeight = 512;
            UnityEditor.LightmapEditorSettings.maxAtlasWidth = 512;
            UnityEditor.Lightmapping.Clear();
            UnityEditor.Lightmapping.Bake();
            Debug.Log("bake data done!!");
        }

        //保存光照信息
        [ContextMenu("SaveData")]
        public void SaveLightmap()
        {
            m_fogInfo = new FogInfo();
            m_fogInfo.fog = RenderSettings.fog;
            m_fogInfo.fogMode = RenderSettings.fogMode;
            m_fogInfo.fogColor = RenderSettings.fogColor;
            m_fogInfo.fogStartDistance = RenderSettings.fogStartDistance;
            m_fogInfo.fogEndDistance = RenderSettings.fogEndDistance;

            if (LightmapSettings.lightmaps.Length > 0)
            {
                m_lightmapColors = new Texture2D[LightmapSettings.lightmaps.Length];
                m_lightmapDirs = new Texture2D[LightmapSettings.lightmaps.Length];
                m_lightmapShadowMasks = new Texture2D[LightmapSettings.lightmaps.Length];
                for (int i = 0; i < LightmapSettings.lightmaps.Length; i++)
                {
                    LightmapData data = LightmapSettings.lightmaps[i];
                    m_lightmapColors[i] = data.lightmapColor;
                    m_lightmapDirs[i] = data.lightmapDir;
                    m_lightmapShadowMasks[i] = data.shadowMask;
                }
            }            

            List<RendererInfo> rendererInfo = new List<RendererInfo>();

            MeshRenderer[] renderers = GetComponentsInChildren<MeshRenderer>();
            foreach (MeshRenderer r in renderers)
            {
                if (r.lightmapIndex != -1)
                {
                    RendererInfo info = new RendererInfo();
                    info.renderer = r;
                    info.lightmapOffsetScale = r.lightmapScaleOffset;
                    info.lightmapIndex = r.lightmapIndex;
                    rendererInfo.Add(info);
                }
            }
            m_rendererInfo = rendererInfo.ToArray();
            m_terrain = GetComponentInChildren<Terrain>();
            if (m_terrain != null)
            {
                m_terrainRendererInfo = new RendererInfo();
                m_terrainRendererInfo.lightmapOffsetScale = m_terrain.lightmapScaleOffset;
                m_terrainRendererInfo.lightmapIndex = m_terrain.lightmapIndex;
            }
            m_lightmapsMode = (short)LightmapSettings.lightmapsMode;
        }
#endif

        
    }
}