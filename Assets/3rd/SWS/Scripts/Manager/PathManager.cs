/*  This file is part of the "Simple Waypoint System" project by Rebound Games.
 *  You are only allowed to use these resources if you've bought them from the Unity Asset Store.
 * 	You shall not license, sublicense, sell, resell, transfer, assign, distribute or
 * 	otherwise make available to any third party the Service or the Content. */

using UnityEngine;

namespace SWS
{
    /// <summary>
    /// Stores waypoints, accessed by walker objects.
    /// Provides gizmo visualization in the editor.
    /// <summary>
    public class PathManager : MonoBehaviour
    {
        /// <summary>
        /// Waypoint array creating the path.
        /// <summary>
        public Transform[] waypoints = new Transform[]{};

        /// <summary>
        /// Toggles drawing of linear or curved gizmo lines.
        /// <summary>
        public bool drawCurved = true;
        
        /// <summary>
        /// Toggles drawing of waypoint direction rotation.
        /// <summary>
        public bool drawDirection = false;

        /// <summary>
        /// Gizmo color for path ends.
        /// <summary>
        public Color color1 = new Color(1, 0, 1, 0.5f);

        /// <summary>
        /// Gizmo color for lines and waypoints.
        /// <summary>
        public Color color2 = new Color(1, 235 / 255f, 4 / 255f, 0.5f);

        /// <summary>
        /// Gizmo size for path ends.
        /// <summary>
        public Vector3 size = new Vector3(.7f, .7f, .7f);

        /// <summary>
        /// Gizmo radius for waypoints.
        /// <summary>
        public float radius = .4f;

        /// <summary>
        /// Skip custom names on waypoint renaming.
        /// </summary>
        public bool skipCustomNames = true;

        /// <summary>
        /// Gameobject for replacing waypoints.
        /// <summary>
        public GameObject replaceObject;


        public float[] m_wapPointDist;
        public float m_totalLen;
        void Awake()
        {
            //计算总距离和两点间距离, 其实这个数据应该可以在eidtor中就可以生成。
            m_wapPointDist = new float[waypoints.Length];
            m_totalLen = 0;
            Vector3 pos = waypoints[0].localPosition;
            for (int i = 1; i < waypoints.Length; i++)
            {
                float dist = Vector3.Distance(pos, waypoints[i].localPosition);
                m_totalLen += dist; 
                m_wapPointDist[i - 1] = dist;
                pos = waypoints[i].localPosition;
            }
            m_wapPointDist[waypoints.Length - 1] = 0;

            WaypointManager.AddPath(gameObject);
        }


        //editor visualization
        void OnDrawGizmos()
        {
            if (waypoints.Length <= 0) return;

            //get positions
            Vector3[] wpPositions = GetPathPoints();

            //assign path ends color
            Vector3 start = wpPositions[0];
            Vector3 end = wpPositions[wpPositions.Length - 1];
            Gizmos.color = color1;
            Gizmos.DrawWireCube(start, size * GetHandleSize(start) * 1.5f);
            Gizmos.DrawWireCube(end, size * GetHandleSize(end) * 1.5f);

            //assign line and waypoints color
            Gizmos.color = color2;
            for (int i = 1; i < wpPositions.Length - 1; i++)
                Gizmos.DrawWireSphere(wpPositions[i], radius * GetHandleSize(wpPositions[i]));

            //draw linear or curved lines with the same color
            if (drawCurved && wpPositions.Length >= 2)
                WaypointManager.DrawCurved(wpPositions);
            else
                WaypointManager.DrawStraight(wpPositions);
        }


        //helper method to get screen based handle sizes
        public virtual float GetHandleSize(Vector3 pos)
        {
            float handleSize = 1f;
            #if UNITY_EDITOR
                handleSize = UnityEditor.HandleUtility.GetHandleSize(pos) * 0.4f;
                handleSize = Mathf.Clamp(handleSize, 0, 1.2f);
            #endif
            return handleSize;
        }


        /// <summary>
        /// Returns waypoint positions (path positions) as Vector3 array.
        /// <summary>
        public virtual Vector3[] GetPathPoints(bool local = false)
        {
            Vector3[] pathPoints = new Vector3[waypoints.Length];

            if (local)
            {
                for (int i = 0; i < waypoints.Length; i++)
                    pathPoints[i] = waypoints[i].localPosition;
            }
            else
            {
                for (int i = 0; i < waypoints.Length; i++)
                    pathPoints[i] = waypoints[i].position;
            }

            return pathPoints;
        }

        public virtual Vector3[] GetPathEuler( bool local = false )
        {
            Vector3[] pathEuler = new Vector3[ waypoints.Length ];

            if ( local )
            {
                for ( int i = 0; i < waypoints.Length-1; i++ )
                {
                    // waypoints[ i ].LookAt( waypoints[ i + 1 ] );
                    /*
                    Vector3 temp =  waypoints[ i + 1 ].localPosition - waypoints[ i ].localPosition;
                    Quaternion lookRot = Quaternion.LookRotation( temp );                       
                    pathEuler[ i ] = lookRot.eulerAngles;*/
                    pathEuler[ i ] = waypoints[ i ].localRotation.eulerAngles;
                    
                }

            }
            else
            {
                for ( int i = 0; i < waypoints.Length - 1; i++ )
                {
                    // waypoints[ i ].LookAt( waypoints[ i + 1 ] );
                    /*
                    Vector3 temp = waypoints[ i + 1 ].position - waypoints[ i ].position;
                    Quaternion lookRot = Quaternion.LookRotation( temp );
                    pathEuler[ i ] = lookRot.eulerAngles;*/
                    pathEuler[ i ] = waypoints[ i ].eulerAngles;
                    //Debug.Log( pathEuler[ i ] );
                    //pathEuler[i] = Quaternion.Euler( pathEuler[ i ])*transform.forward;
                    // pathEuler[i] = waypoints[ i ].forward;
                    Debug.Log( pathEuler[ i ] );
                }
            }

         
            return pathEuler;
        }


        /// <summary>
        /// Converts bezier points on the path to waypoint index
        /// </summary>
        public virtual int GetWaypointIndex(int point)
		{
			return point;
		}


		/// <summary>
		/// Returns the event count (should be equal to waypoint length)
		/// </summary>
		public virtual int GetEventsCount()
		{
			return waypoints.Length;
		}
    }
}


