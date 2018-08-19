public interface ITask
{
    /// <summary>
    /// set flag of task.
    /// </summary>
    void SetEnd(bool flag);
    /// <summary>
    /// start task.
    /// </summary>
    void StartTask();
    /// <summary>
    /// end task.
    /// </summary>
    void EndTask();
    /// <summary>
    /// get status of task.
    /// </summary>
    /// <returns></returns>
    bool IsEnd();
}