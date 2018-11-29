using UnityEngine;
using System.Collections;
using System;

namespace AF
{
    public interface ILoopScrollDelegate
    {
        string OnOpen(LoopScrollRect loopView, int row);
    }
    public interface ISubLoopScrollDelegate
    {
        void OnSecTouch(LoopScrollRect loopView, int parentRow, int row);
    }
    public interface ILoopScrollDataSource
    {
        /// <summary>
        /// Get the number of rows that a certain table should display
        /// </summary>
        int GetNumberOfRows(LoopScrollRect loopView);
        /// <summary>
        /// Get the height of a row of a certain cell in the table view
        /// </summary>
        float GetHeight(LoopScrollRect loopView);

        /// <summary>
        /// Create a cell for a certain row in a table view.
        /// Callers should use tableView.GetReusableCell to cache objects
        /// </summary>
        void UpdateCellForRow(LoopScrollRect loopView, LoopSubCell cell, int row);
    }
    public interface ISubLoopScrollDataSource
    {
        /// <summary>
        /// Get the number of rows that a certain table should display
        /// </summary>
        int GetNumberOfSubRows(LoopScrollRect loopView, int parentRow);
        /// <summary>
        /// Get the height of a row of a certain cell in the table view
        /// </summary>
        float GetSubHeight(LoopScrollRect loopView, int parentRow);

        /// <summary>
        /// Create a cell for a certain row in a table view.
        /// Callers should use tableView.GetReusableCell to cache objects
        /// </summary>
        void UpdateCellForSubRow(LoopScrollRect loopView, LoopSubCell cell, int parentRow, int row);
    }
    /*
    public abstract class LoopScrollDataSource
    {
        public abstract void ProvideData(Transform transform, int idx);
    }

	public class LoopScrollSendIndexSource : LoopScrollDataSource
    {
		public static readonly LoopScrollSendIndexSource Instance = new LoopScrollSendIndexSource();

		LoopScrollSendIndexSource(){}

        public override void ProvideData(Transform transform, int idx)
        {
            transform.SendMessage("ScrollCellIndex", idx);
        }
    }


    public class LoopScrollArraySource<T> : LoopScrollDataSource
    {
        T[] objectsToFill;

		public LoopScrollArraySource(T[] objectsToFill)
        {
            this.objectsToFill = objectsToFill;
        }

        public override void ProvideData(Transform transform, int idx)
        {
            transform.SendMessage("ScrollCellContent", objectsToFill[idx]);
        }

    }
     * */
}