using System;
using UnityEngine;
using System.Collections.Generic;

[RequireComponent( typeof( UIPanel ) )]
public class ParticleSystemClipper : MonoBehaviour
{
    const string ShaderName = "Bleach/Particles Additive Area Clip";
    const float ClipInterval = 0.5f;
    Dictionary<string, Shader> lastShaders = new Dictionary<string, Shader>();

    UIPanel m_targetPanel;
    Shader m_shader;

    void Start()
    {
        // find panel
        m_targetPanel = GetComponent<UIPanel>();

        if ( m_targetPanel == null )
            throw new ArgumentNullException( "Cann't find the right UIPanel" );
        if ( m_targetPanel.clipping != UIDrawCall.Clipping.SoftClip )
            throw new InvalidOperationException( "Don't need to clip" );

        m_shader = Shader.Find( ShaderName );

        Clip();
        //if ( !IsInvoking( "Clip" ) )
        //    InvokeRepeating( "Clip", 0, ClipInterval );
    }

    Vector4 CalcClipArea()
    {
        Transform[] panels = this.GetComponentsInParent<Transform>();
        float mul = 1;
        for ( int i = 0; i < panels.Length; i++ )
        {
            if ( panels[ i ].transform.localScale.x > 0.01f && panels[ i ].transform.localScale.x != 1 )
                mul = mul * panels[ i ].transform.localScale.x;
        }
        var clipRegion = m_targetPanel.finalClipRegion;
        Vector4 nguiArea = new Vector4()
        {
            x = clipRegion.x - clipRegion.z / 2,
            y = clipRegion.y - clipRegion.w / 2,
            z = clipRegion.x + clipRegion.z / 2,
            w = clipRegion.y + clipRegion.w / 2
        } * mul;

        UIRoot uiRoot = UIMsgReceive.instance.GetComponent<UIRoot>();
        Vector3 pos = m_targetPanel.transform.position - uiRoot.transform.position;
        float h = 2;
        float temp = h / uiRoot.manualHeight;
        return new Vector4()
        {
            x = pos.x + nguiArea.x * temp,
            y = pos.y + nguiArea.y * temp,
            z = pos.x + nguiArea.z * temp,
            w = pos.y + nguiArea.w * temp
        };
    }

    private void Clip()
    {
        Vector4 clipArea = CalcClipArea();
        ParticleSystem[] particleSystems = this.GetComponentsInChildren<ParticleSystem>();
        for ( int i = 0; i < particleSystems.Length; i++ )
        {
            ParticleSystem ps = particleSystems[ i ];
            Material mat = ps.GetComponent<ParticleSystemRenderer>().sharedMaterial;

            if ( !lastShaders.ContainsKey( mat.name ) )
                lastShaders.Add( mat.name, mat.shader );

            if ( mat.shader.name != ShaderName )
                mat.shader = m_shader;
            
            mat.SetVector( "_Area", clipArea );
        }
        MeshRenderer[] meshRenders = this.GetComponentsInChildren<MeshRenderer>();
        for ( int i = 0; i < meshRenders.Length; i++ )
        {
            MeshRenderer ps = meshRenders[ i ];
            Material mat = ps.sharedMaterial;

            if ( !lastShaders.ContainsKey( mat.name ) )
                lastShaders.Add( mat.name, mat.shader );

            if ( mat.shader.name != ShaderName )
                mat.shader = m_shader;
            
            mat.SetVector( "_Area", clipArea );
        }
    }
    
    public void ResetShader()
    {
        CancelInvoke( "Clip" );
        ParticleSystem[] particleSystems = this.GetComponentsInChildren<ParticleSystem>();
        Vector4 clipArea = new Vector4( -1, -1, 1, 1 );
        for ( int i = 0; i < particleSystems.Length; i++ )
        {
            ParticleSystem ps = particleSystems[ i ];
            Material mat = ps.GetComponent<ParticleSystemRenderer>().sharedMaterial;

            string matName = mat.name.Replace( " (Instance)", "" );
            if ( lastShaders.ContainsKey( matName ) && mat.shader != lastShaders[ matName ] )
                mat.shader = lastShaders[ matName ];
        }
        MeshRenderer[] meshRenders = this.GetComponentsInChildren<MeshRenderer>();
        for ( int i = 0; i < meshRenders.Length; i++ )
        {
            MeshRenderer ps = meshRenders[ i ];
            Material mat = ps.sharedMaterial;

            string matName = mat.name.Replace( "(Instance)", "" );
            if ( lastShaders.ContainsKey( matName ) && mat.shader != lastShaders[ matName ] )
                mat.shader = lastShaders[ matName ];
        }
    }
}
