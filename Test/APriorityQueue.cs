using UnityEngine;  
using System.Collections;  
public class APriorityQueue {  
    private ArrayList nodes = new ArrayList();  
      
    public int Length {  
        get { return this.nodes.Count; }  
    }  
      
    public bool Contains(object node) {  
        return this.nodes.Contains(node);  
    }

    public ANode First()
    {  
        if (this.nodes.Count > 0) {
            return (ANode)this.nodes[0];  
        }  
                return null;  
    }

    public void Push(ANode node)
    {  
        this.nodes.Add(node);  
        this.nodes.Sort();  
    }

    public void Remove(ANode node)
    {  
        this.nodes.Remove(node);  
        //Ensure the list is sorted  
        this.nodes.Sort();  
    }  
} 