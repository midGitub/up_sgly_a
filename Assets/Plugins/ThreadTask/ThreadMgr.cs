using System.Collections;
using System.Collections.Generic;
using System.Threading;
using UnityEngine;
using JOSophia;
/// <summary>
/// ThreadMgr类说明:
/// </summary>
public class ThreadMgr:JOSingleton<ThreadMgr>{
    // 变量格式: m_XXXX
    // 公开方法或属性格式 : AxxGxx
    // 内部方法格式: _AxxGxx

    #region - 变量 -
    public AutoResetEvent m_locks = new AutoResetEvent(false);
    private List<ITask> m_tasks = new List<ITask>();
    private List<WorkThread> m_workers = new List<WorkThread>();

    private int m_maxThreadNum = 10;
    private int m_minThreadNum = 1;
    #endregion

    #region - 属性 -
    #endregion

    ThreadMgr() { }

    #region - Mono方法 -

    #endregion

    #region - 公开方法 -
    public int WorkerCount { get { return m_workers.Count; } }

    /// <summary>
    /// 是否执行完所有任务
    /// </summary>
    /// <returns></returns>
    public bool IsAllTaskFinished()
    {
        bool isworking = false;
        for(int i =0;i < m_workers.Count;++i)
        {
            isworking = m_workers[i].Working;
            if (isworking) break;
        }
        return !isworking && (m_tasks.Count == 0);
    }

    /// <summary>
    /// 开始工作
    /// </summary>
    /// <param name="threadNum">使用工作线程数量</param>
    public void StartWork(int threadNum = 2)
    {
        threadNum = Mathf.Clamp(threadNum, m_minThreadNum, m_maxThreadNum);
        while(m_workers.Count != threadNum)
        {
            if(m_workers.Count > threadNum)
            {
                WorkThread wt = m_workers[m_workers.Count - 1];
                m_workers.Remove(wt);
                wt.Close();
            }else
            {
                WorkThread wt = new WorkThread(ref m_tasks, m_workers.Count);
                m_workers.Add(wt);              
            }
        }
    }

    /// <summary>
    /// 添加任务
    /// </summary>
    /// <param name="task">任务内容</param>
    /// <param name="fresh">是否为新任务, 残留任务优先执行</param>
    public void AddTask(ITask task, bool fresh = true)
    {
        lock (m_tasks)
        {
            if (fresh) m_tasks.Add(task);
            else m_tasks.Insert(0, task);
            m_locks.Set();
        }
    }
    
    public void AddTask(ITask[] tasks, bool fresh = true)
    {
        lock(m_tasks)
        {
            if (fresh) m_tasks.AddRange(tasks);
            else m_tasks.InsertRange(0, tasks);
            m_locks.Set();
        }
    }

    public void RemoveTask(ITask task)
    {
        lock (m_tasks) m_tasks.Remove(task);
    }

    public void RemoveTask(ITask[] tasks)
    {
        lock (m_tasks) for (int i = 0; i < tasks.Length; ++i) m_tasks.Remove(tasks[i]);
    }

    /// <summary>
    /// 关闭工作线程
    /// </summary>
    public void Close()
    {
        while(m_workers.Count != 0)
        {
            WorkThread wt = m_workers[0];
            m_workers.RemoveAt(0);
            wt.Close();
        }
    }

    /// <summary>
    /// 关闭工作线程, 清除数据
    /// </summary>
    public void Clear()
    {
        Close();
        m_tasks.Clear();
    }
    #endregion

    #region - 内部方法 -
    #endregion

    #region - 事件响应 -
    #endregion
}
