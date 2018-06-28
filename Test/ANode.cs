
using UnityEngine;  
using System.Collections;  
using System;  
  
public class ANode : IComparable {  
    public float nodeTotalCost;  
    public float estimatedCost;  
    public bool bObstacle;
    public ANode parent;  
    public Vector3 position;  
      
    public ANode() {  
        this.estimatedCost = 0.0f;  
        this.nodeTotalCost = 1.0f;  
        this.bObstacle = false;  
        this.parent = null;  
    }

    public ANode(Vector3 pos)
    {  
        this.estimatedCost = 0.0f;  
        this.nodeTotalCost = 1.0f;  
        this.bObstacle = false;  
        this.parent = null;  
        this.position = pos;  
    }  
      
    public void MarkAsObstacle() {  
        this.bObstacle = true;  
    }  
    
    public int CompareTo(object obj)  
    {
        ANode node = (ANode)obj;  
        //Negative value means object comes before this in the sort order.  
        if (this.estimatedCost < node.estimatedCost)  
                return -1;  
        //Positive value means object comes after this in the sort order.  
        if (this.estimatedCost > node.estimatedCost)  
                return 1;  
        return 0;  
    }  
}