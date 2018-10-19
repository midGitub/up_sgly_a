using UnityEngine;
using System.Collections;
using System.Collections.Generic;

namespace AF
{
    public class PScrollUV : MonoBehaviour
    {
        public float m_speedX;
        public float m_speedY;

        Material m_material;
        void Awake()
        {

            m_material = GetComponent<Renderer>().material;
        }
        void Update()
        {
            var offsetX = Time.time * m_speedX;
            var offsetY = Time.time * m_speedY;
            m_material.mainTextureOffset = new Vector2(offsetX, offsetY);
        }        
    }
}