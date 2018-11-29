using UnityEngine;
using System.Collections;

namespace AF
{
    /// <summary>
    /// An interface for a data source to a TableView
    /// </summary>
    public interface IDoubleTableViewDataSource
    {
        /// <summary>
        /// Get the number of rows that a certain table should display
        /// </summary>
        int GetSubNumberOfRows(DoubleTableView tableView, int parentRow);
        /// <summary>
        /// Get the height of a row of a certain cell in the table view
        /// </summary>
        float GetSubHeight(DoubleTableView tableView, int parentRow);

        /// <summary>
        /// Create a cell for a certain row in a table view.
        /// Callers should use tableView.GetReusableCell to cache objects
        /// </summary>
        TableViewCell GetSubCellForRow(DoubleTableView tableView, int parentRow, int row);
    }

    public interface IDoubleTableViewDelegate
    {
        void OnTouch(DoubleTableView tableView, int parentRow, int row);

    }
}
