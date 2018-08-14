using System.Collections.Generic;
using System.Threading;
using UnityEngine;

public class WorkThread
{
    public int m_workID;
    private bool m_working;
    private List<ITask> m_taskQueue;
    private ITask m_task;
    private Thread m_thread;
    private AutoResetEvent m_locks;

    public bool Working
    {
        get
        {
            return m_working;
        }        
    }

    public WorkThread(ref List<ITask> queue, int id,ref AutoResetEvent locks)
    {
        m_taskQueue = queue;
        m_workID = id;
        m_locks = locks;
        m_working = true;
        m_thread = new Thread(Run);
        m_thread.Start();
    }

    private void Run()
    {
        while(Working && m_taskQueue != null)
        {
            m_working = false;
            while (m_taskQueue.Count == 0) m_locks.WaitOne();
            m_working = true;
            lock(m_taskQueue)
            {
                if (m_taskQueue.Count > 0)
                {
                    m_task = m_taskQueue[0];
                    m_taskQueue.RemoveAt(0);
                }
            }
            if(m_task != null)
            {
                m_task.SetEnd(false);
                m_task.StartTask();
                m_task.EndTask();
                m_task = null;
            }
        }
    }

    public void Pause()
    {
        m_working = false;
    }

    public void Resume()
    {
        m_working = true;
    }

    public void Close()
    {
        m_working = false;
        m_thread.Abort();
        if (m_task != null) m_task.EndTask();
    }
}