/*************************
 * UVAnimation function
 * LiuYu. 153250945@qq.com
 ************************/
using UnityEngine;
using System.Collections.Generic;

public class UVAnimationLiuGuang : MonoBehaviour 
{
	public bool pauseTimer = false;
    public Vector2 uvDefaultTiling = Vector2.one;
    public Vector2 uvDefaultOffset = Vector2.zero;
    public Vector2 uvOffsetSpeed = Vector2.zero;
    public Color matDefaultColor = Color.white;
    public string Layer = "";
	public bool using1 = false;
	public bool using2 = false;
	public bool using3 = false;
	public bool using4 = false;
	public bool using5 = false;

	public bool using6 = false;
	public bool using7 = false;
	public bool using8 = false;
	public bool using9 = false;
	public bool using10 = false;


	private Renderer _renderer;
	private List<Material> _mats = new List<Material> ();
	Vector2 m_offset = new Vector2();
    Vector2 m_tiling = new Vector2();

    // Use this for initialization
    void Awake()
    {
        Renderer r = GetComponent<Renderer>();
        if (r)
        {
            _renderer = r;
        }
        else
        {
            enabled = false;
        }

        if (_renderer != null)
        {
			_mats.Clear ();
            if (using1) _mats.Add(_renderer.sharedMaterials[0]);
			if (using2) _mats.Add(_renderer.sharedMaterials[1]);
			if (using3) _mats.Add(_renderer.sharedMaterials[2]);
			if (using4) _mats.Add(_renderer.sharedMaterials[3]);
			if (using5) _mats.Add(_renderer.sharedMaterials[4]);

			if (using6) _mats.Add(_renderer.sharedMaterials[5]);
			if (using7) _mats.Add(_renderer.sharedMaterials[6]);
			if (using8) _mats.Add(_renderer.sharedMaterials[7]);
			if (using9) _mats.Add(_renderer.sharedMaterials[8]);
			if (using10) _mats.Add(_renderer.sharedMaterials[9]);

			for (int i = 0; i < _mats.Count; ++i)
			{
				_mats[i].SetColor("_TintColor", matDefaultColor);
			}
            if (!string.IsNullOrEmpty(Layer))
            {
                _renderer.sortingLayerName = Layer;
            }
        }
    }

	void Start()
	{
        if (_renderer)
		{
            m_offset = uvDefaultOffset;
            m_tiling = uvDefaultTiling;

			for (int i = 0; i < _mats.Count; ++i)
            {
				_mats[i].mainTextureOffset = m_offset;
				_mats[i].mainTextureScale = m_tiling;
            }
        }

	}
	
	// Update is called once per frame
	void Update () 
	{
		if (uvOffsetSpeed.x != 0 || uvOffsetSpeed.y != 0)
        {
            m_offset.x += uvOffsetSpeed.x * (pauseTimer ? Time.deltaTime : Time.unscaledDeltaTime);
            if (m_offset.x > 1)
            {
                m_offset.x -= 1;
            }
            else if (m_offset.x < -1)
            {
                m_offset.x += 1;
            }
			m_offset.y += uvOffsetSpeed.y * (pauseTimer ? Time.deltaTime : Time.unscaledDeltaTime);
            if (m_offset.y > 1)
            {
                m_offset.y -= 1;
            }
            else if (m_offset.y < -1)
            {
                m_offset.y += 1;
            }

			for (int i = 0; i < _mats.Count; ++i)
			{
				_mats[i].mainTextureOffset = m_offset;
			}
        }
	}
	
//	void OnDestroy()
//	{
//		for (int i = 0; i < _mats.Count; ++i)
//		{
//			GameObject.DestroyImmediate(_mats[i]);
//		}
//	}	
}
