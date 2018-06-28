using UnityEngine;  
using System.Collections;
public class ATestCode : MonoBehaviour
{
    private Transform startPos, endPos;
    public ANode startNode { get; set; }
    public ANode goalNode { get; set; }
    public ArrayList pathArray;
    GameObject objStartCube, objEndCube;
    private float elapsedTime = 0.0f;
    //Interval time between pathfinding  
    public float intervalTime = 1.0f;

    void Start()
    {
        objStartCube = GameObject.FindGameObjectWithTag("Start");
        objEndCube = GameObject.FindGameObjectWithTag("End");
        pathArray = new ArrayList();
        FindPath();
    }
    void Update()
    {
        elapsedTime += Time.deltaTime;
        if (elapsedTime >= intervalTime)
        {
            elapsedTime = 0.0f;
            FindPath();
        }
    }

    void FindPath()
    {
        startPos = objStartCube.transform;
        endPos = objEndCube.transform;
        startNode = new ANode(AGridManager.instance.GetGridCellCenter(
                AGridManager.instance.GetGridIndex(startPos.position)));
        goalNode = new ANode(AGridManager.instance.GetGridCellCenter(
                AGridManager.instance.GetGridIndex(endPos.position)));
        pathArray = AStar.FindPath(startNode, goalNode);
    }
    void OnDrawGizmos()
    {
        if (pathArray == null)
            return;
        if (pathArray.Count > 0)
        {
            int index = 1;
            foreach (ANode node in pathArray)
            {
                if (index < pathArray.Count)
                {
                    ANode nextNode = (ANode)pathArray[index];
                    Debug.DrawLine(node.position, nextNode.position,
                        Color.green);
                    index++;
                }
            }
        }
    }
}
