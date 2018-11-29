
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.Events;
using UnityEngine.SocialPlatforms;

using System;
using System.Collections;
using System.Collections.Generic;

using JOSophia;

namespace AF
{
    /// <summary>
    /// A reusable table for for (vertical) tables. API inspired by Cocoa's UITableView
    /// Hierarchy structure should be :
    /// GameObject + TableView (this) + Mask + Scroll Rect (point to child)
    /// - Child GameObject + Vertical Layout Group
    /// This class should be after Unity's internal UI components in the Script Execution Order
    /// </summary>
    [RequireComponent(typeof(ScrollRect))]
    public class DoubleTableView : TableView
    {
        protected class SubDataSource : ITableViewDataSource, ITableViewDelegate
        {
            public DoubleTableView m_belongTable;
            
            #region Sub DataSource
            public int GetNumberOfRowsForTableView(TableView tableView)
            {
                if (m_belongTable.m_dDataSource == null) return 0;
                return m_belongTable.m_dDataSource.GetSubNumberOfRows(m_belongTable, m_belongTable.m_openIndex);
            }

            public float GetHeightForRowInTableView(TableView tableView, int row)
            {
                if (m_belongTable.m_dDataSource == null) return 0;
                return m_belongTable.m_dDataSource.GetSubHeight(m_belongTable, m_belongTable.m_openIndex);
            }
            public TableViewCell GetCellForRowInTableView(TableView tableView, int row)
            {
                return m_belongTable.m_dDataSource.GetSubCellForRow(m_belongTable, m_belongTable.m_openIndex, row);
            }

            public void OnTouch(TableView tableView, int row)
            {
                m_belongTable.m_dDelegate.OnTouch(m_belongTable, m_belongTable.m_openIndex, row);
            }
            #endregion
        }

        protected SubDataSource m_subDataSource;
        protected IDoubleTableViewDataSource m_dDataSource;
        protected IDoubleTableViewDelegate m_dDelegate;
        TableView m_subTable;
        RectTransform m_subTableRTrans;
        int m_openIndex = -1;
        float m_subTableSize = -1; //子菜单的可视大小(根据不同方向, 代表宽或高)
        float m_openSubTableSize = -1;//子菜单的可视大小(根据不同方向, 代表宽或高)
        bool m_isSubDynamicHeight;

        void Awake() {
            base.Awake();
            m_isSubDynamicHeight = true;
            m_subDataSource = new SubDataSource();
            m_subDataSource.m_belongTable = this;

            m_subTableRTrans = transform.Find("[SUB_TABLE]") as RectTransform;
            m_subTable = m_subTableRTrans.GetComponent<TableView>();
            m_subTable.dataSource = m_subDataSource;
            m_subTable.t_delegate = m_subDataSource;
        }

        public void SetSubDynamicHeight(bool beDynamic)
        {
            m_isSubDynamicHeight = beDynamic;
        }
        protected override void StoreCellForReuse(TableViewCell cell)
        {
            if (cell.RowNumber() == m_openIndex)
            {
                m_subTableRTrans.SetParent(transform);
                m_subTableRTrans.gameObject.SetActive(false);
            }
            base.StoreCellForReuse(cell);
        }
        protected override TableViewCell AddRow(int row, bool atEnd)
        {
            TableViewCell cell = base.AddRow(row, atEnd);
            if (row == m_openIndex)
            {
                _setupSubTable(cell, row);
            }
            return cell;
        }

        void _setupSubTable(TableViewCell cell, int row)
        {
            float height = dataSource.GetHeightForRowInTableView(this, row);
            m_subTableRTrans.SetParent(cell.transform);
            Vector2 ap = Vector2.zero;
            ap.y = -height - m_verticalLayoutGroup.spacing;
            m_subTableRTrans.anchoredPosition = ap;
            m_subTableRTrans.gameObject.SetActive(true);
        }
        protected override void _OnCellTouch(int row)
        {
            if (m_openIndex == row)
            {
                NotifyCellDimensionsSub(m_openIndex);
                m_subTableRTrans.SetParent(transform);
                m_subTableRTrans.gameObject.SetActive(false);
                m_openIndex = -1;
                ScrollTo(row, false);
            }
            else
            {
                float height = dataSource.GetHeightForRowInTableView(this, row);
                float tmpTableSize = m_subTableSize;
                if (m_subTableSize <= 0)
                {
                    if (row == m_numOfRow - 1){
                        tmpTableSize = m_rTrans.sizeDelta.y - height - m_verticalLayoutGroup.spacing;
                    }
                    else
                        tmpTableSize = m_rTrans.sizeDelta.y - height * 2 - m_verticalLayoutGroup.spacing;
                }
                if (m_isSubDynamicHeight)
                {
                    int subRowNum = m_dDataSource.GetSubNumberOfRows(this, row);
                    float subCellHeight = m_dDataSource.GetSubHeight(this, row);
                    
                    m_openSubTableSize = subRowNum * subCellHeight + (m_subTable.GetLayouGroup().spacing * (subRowNum ));
                    //Debug.LogFormat("m_openSubTableSize {0} subRowNum {1} subCellHeight{2}", m_openSubTableSize, subRowNum, subCellHeight);
                    //Debug.LogFormat("spacing {0}", m_subTable.GetLayouGroup().spacing);
                    if (m_openSubTableSize < subCellHeight || m_openSubTableSize > tmpTableSize)
                    {
                        m_openSubTableSize = tmpTableSize;
                    }
                }
                else
                {
                    m_openSubTableSize = tmpTableSize;
                }
                

                if (m_openIndex >= 0 && m_openIndex < m_numOfRow)
                    NotifyCellDimensionsSub(m_openIndex);

                m_openIndex = row;
                NotifyCellDimensionsAdd(m_openIndex);
                TableViewCell cell = GetCellAtRow(m_openIndex);
                if (cell)
                {
                    _setupSubTable(cell, m_openIndex);
                    Vector2 sd = m_subTableRTrans.sizeDelta;
                    sd.y = m_openSubTableSize;
                    m_subTableRTrans.sizeDelta = sd;
                }
                
                ScrollTo(m_openIndex, false);
                m_subTable.ReloadData();
            }
            
            //t_delegate.OnTouch(this, row);
        }
        public void SetSubCellPrefab(string name, UnityEngine.Object cellPrefab)
        {
            m_subTable.SetCellPrefab(name, cellPrefab);
        }
        public TableViewCell GetSubCellAtRow(int row)
        {
            return m_subTable.GetCellAtRow(row);
        }
        public void SetSubSize(float size)
        {
            float height = dataSource.GetHeightForRowInTableView(this,0);
            if (size > m_rTrans.sizeDelta.y - height - m_verticalLayoutGroup.spacing)
            {
                size = m_rTrans.sizeDelta.y - height - m_verticalLayoutGroup.spacing;
            }
            m_subTableSize = size;
        }
        public void NotifyCellDimensionsAdd(int row)
        {
            float oldHeight = m_rowHeights[row];
            m_rowHeights[row] = m_dataSource.GetHeightForRowInTableView(this, row) + m_openSubTableSize;
            if (row > 0)
            {
                m_rowHeights[row] += m_verticalLayoutGroup.spacing;
            }
            m_cleanCumulativeIndex = Mathf.Min(m_cleanCumulativeIndex, row - 1);
            TableViewCell cell = GetCellAtRow(row);
            if (cell != null)
            {
                cell.SetPreferredHeight(m_rowHeights[row]);
                if (row > 0)
                {
                    cell.SetPreferredHeightOffset(-m_verticalLayoutGroup.spacing);
                }
            }
            float heightDelta = m_rowHeights[row] - oldHeight;
            m_scrollSize.Set(m_scrollRect.content.sizeDelta.x, m_scrollRect.content.sizeDelta.y + heightDelta);
            m_scrollRect.content.sizeDelta = m_scrollSize;
            m_requiresRefresh = true;
        }
        public void NotifyCellDimensionsSub(int row)
        {
            float oldHeight = m_rowHeights[row];
            m_rowHeights[row] = m_dataSource.GetHeightForRowInTableView(this, row);
            if (row > 0)
            {
                m_rowHeights[row] += m_verticalLayoutGroup.spacing;
            }
            m_cleanCumulativeIndex = Mathf.Min(m_cleanCumulativeIndex, row - 1);
            TableViewCell cell = GetCellAtRow(row);
            if (cell != null)
            {
                cell.SetPreferredHeight(m_rowHeights[row]);
                if (row > 0)
                {
                    cell.SetPreferredHeightOffset(-m_verticalLayoutGroup.spacing);
                }
            }
            float heightDelta = m_rowHeights[row] - oldHeight;
            m_scrollSize.Set(m_scrollRect.content.sizeDelta.x, m_scrollRect.content.sizeDelta.y + heightDelta);
            m_scrollRect.content.sizeDelta = m_scrollSize;
            m_requiresRefresh = true;
        }
    }

}
