using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;

public class PrefabEditor : Editor
{
    [MenuItem("工具/一键应用Prefab &1", false, -2)]
    static void Apply()
    {
        int cnt = Selection.objects.Length;
        for (int i = 0; i < cnt; ++i)
        {
            if (Selection.objects[i].GetType() != typeof(GameObject)) continue;
            GameObject obj = Selection.objects[i] as GameObject;
            GameObject g = PrefabUtility.GetPrefabParent(obj) as GameObject;
            string path = AssetDatabase.GetAssetPath(g);
            if (!path.EndsWith(".prefab")) continue;
            PrefabUtility.ReplacePrefab(obj, g, ReplacePrefabOptions.ConnectToPrefab | ReplacePrefabOptions.ReplaceNameBased);
            Debug.Log("Apply prefabs index " + i + " : " + path);
        }
    }
}
