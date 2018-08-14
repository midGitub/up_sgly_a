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
    public AutoResetEvent m_downLoadLocks = new AutoResetEvent(false);
    public AutoResetEvent m_unZipLocks = new AutoResetEvent(false);
    private List<ITask> m_downLoadTasks = new List<ITask>();
    private List<WorkThread> m_downLoadWorkers = new List<WorkThread>();
    private List<ITask> m_unZipTasks = new List<ITask>();
    private List<WorkThread> m_unZipWorkers = new List<WorkThread>();

    private int m_maxThreadNum = 10;
    private int m_minThreadNum = 1;
    #endregion

    #region - 属性 -
    #endregion

    ThreadMgr() { }

    #region - Mono方法 -

    #endregion

    #region - 公开方法 -
    #region - DownLoad -
    public int DownLoadWorkerCount { get { return m_downLoadWorkers.Count; } }

    /// <summary>
    /// 是否执行完所有任务
    /// </summary>
    /// <returns></returns>
    public bool IsAllDownLoadTaskFinished()
    {
        bool isworking = false;
        for(int i =0;i < m_downLoadWorkers.Count;++i)
        {
            isworking = m_downLoadWorkers[i].Working;
            if (isworking) break;
        }
        return !isworking && (m_downLoadTasks.Count == 0);
    }

    /// <summary>
    /// 开始工作
    /// </summary>
    /// <param name="threadNum">使用工作线程数量</param>
    public void StartDownLoadWork(int threadNum = 2)
    {
        threadNum = Mathf.Clamp(threadNum, m_minThreadNum, m_maxThreadNum);
        while(m_downLoadWorkers.Count != threadNum)
        {
            if(m_downLoadWorkers.Count > threadNum)
            {
                WorkThread wt = m_downLoadWorkers[m_downLoadWorkers.Count - 1];
                m_downLoadWorkers.Remove(wt);
                wt.Close();
            }else
            {
                WorkThread wt = new WorkThread(ref m_downLoadTasks, m_downLoadWorkers.Count, ref m_downLoadLocks);
                m_downLoadWorkers.Add(wt);              
            }
        }
    }
    
    /// <summary>
    /// 添加任务
    /// </summary>
    /// <param name="task">任务内容</param>
    /// <param name="fresh">是否为新任务, 残留任务优先执行</param>
    public void AddDownLoadTask(ITask task, bool fresh = true)
    {
        lock (m_downLoadTasks)
        {
            if (fresh) m_downLoadTasks.Add(task);
            else m_downLoadTasks.Insert(0, task);
            m_unZipLocks.Set();
        }
    }
    
    public void AddDownLoadTask(ITask[] tasks, bool fresh = true)
    {
        lock(m_downLoadTasks)
        {
            if (fresh) m_downLoadTasks.AddRange(tasks);
            else m_downLoadTasks.InsertRange(0, tasks);
            m_downLoadLocks.Set();
        }
    }

    public void RemoveDownLoadTask(ITask task)
    {
        lock (m_downLoadTasks) m_downLoadTasks.Remove(task);
    }

    public void RemoveDownLoadTask(ITask[] tasks)
    {
        lock (m_downLoadTasks) for (int i = 0; i < tasks.Length; ++i) m_downLoadTasks.Remove(tasks[i]);
    }

    /// <summary>
    /// 关闭工作线程
    /// </summary>
    public void CloseDownLoad()
    {
        while(m_downLoadWorkers.Count != 0)
        {
            WorkThread wt = m_downLoadWorkers[0];
            m_downLoadWorkers.RemoveAt(0);
            wt.Close();
        }
    }

    /// <summary>
    /// 关闭工作线程, 清除数据
    /// </summary>
    public void ClearDownLoad()
    {
        CloseDownLoad();
        m_downLoadTasks.Clear();
    }
    #endregion

    #region - unZip -
    public int UnZipWorkerCount { get { return m_unZipWorkers.Count; } }

    public void StartUnZipWork(int threadNum = 1)
    {
        threadNum = Mathf.Clamp(threadNum, m_minThreadNum, m_maxThreadNum);
        while (m_unZipWorkers.Count != threadNum)
        {
            if (m_unZipWorkers.Count > threadNum)
            {
                WorkThread wt = m_unZipWorkers[m_unZipWorkers.Count - 1];
                m_unZipWorkers.Remove(wt);
                wt.Close();
            }
            else
            {
                WorkThread wt = new WorkThread(ref m_unZipTasks, m_unZipWorkers.Count, ref m_unZipLocks);
                m_unZipWorkers.Add(wt);
            }
        }
    }
    
    public void AddUnZipTask(ITask task, bool fresh = true)
    {
        lock (m_unZipTasks)
        {
            if (fresh) m_unZipTasks.Add(task);
            else m_unZipTasks.Insert(0, task);
            m_unZipLocks.Set();
        }
    }

    public void AddUnZipTask(ITask[] task, bool fresh = true)
    {
        lock (m_unZipTasks)
        {
            if (fresh) m_unZipTasks.AddRange(task);
            else m_unZipTasks.InsertRange(0, task);
            m_unZipLocks.Set();
        }
    }

    public void RemoveUnZipTask(ITask task)
    {
        lock (m_downLoadTasks) m_unZipTasks.Remove(task);
    }

    public void ClearUnZip()
    {
        CloseUnZip();
        m_downLoadTasks.Clear();
    }

    public void CloseUnZip()
    {
        while (m_unZipWorkers.Count != 0)
        {
            WorkThread wt = m_unZipWorkers[0];
            m_unZipWorkers.RemoveAt(0);
            wt.Close();
        }
    }
    #endregion
    #endregion

    #region - 内部方法 -
    #endregion

    #region - 事件响应 -
    #endregion
}
