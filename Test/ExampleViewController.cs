using Assets.Scripts.TableView;
using UnityEngine;
using UnityEngine.UI;
using System.Collections.Generic;

namespace Assets.Scripts.Example
{
    public class ExampleViewController : MonoBehaviour, ITableViewDataSource, ITableViewDelegate
    {
        public TableView.TableView tableView;
        public ExampleTableViewCell tabelCell;
        private Dictionary<int, float> m_cellSize;

        private float size;
        

        void Awake()
        {
            m_cellSize = new Dictionary<int, float>();
        }
        void Start()
        {
            tableView.Delegate = this;
            tableView.DataSource = this;

            GameObject prefab = Resources.Load( "Prefabs/UI/Debug/ExampleTableViewCell" ) as GameObject;
            tableView.RegisterPrefabForCellReuseIdentifier(prefab, "ExampleTableViewCell");
           // size = tabelCell.text.GetComponent<RectTransform>().sizeDelta.y;
        }

        public int NumberOfRowsInTableView(TableView.TableView tableView)
        {
            return 100;
        }

        /// <summary>
        /// 设置Cell大小
        /// </summary>
        /// <param name="tableView"></param>
        /// <param name="row"></param>
        /// <returns></returns>
        public float SizeForRowInTableView(TableView.TableView tableView, int row)
        {
           // if (m_cellSize.ContainsKey(row))
               // return m_cellSize[row];
             float size = Random.Range( 50.0f, 200.0f );
            return size;
        }
        /// <summary>
        /// 这里要返回cell
        /// </summary>
        /// <param name="tableView"></param>
        /// <param name="row"></param>
        /// <returns></returns>
        static string s_txt = "  CellForRowInTableViewCellForRowInTableViewCellForRowInTableViewCellForRowInTableViewCellForRowInTableViewCellForRowInTableViewCellForRowInTableViewCellForRowInTableViewCellForRowInTableViewCellForRowInTableViewCellForRowInTableViewCellForRowInTableViewCellForRowInTableViewCellForRowInTableViewCellForRowInTableViewCellForRowInTableViewCellForRowInTableViewCellForRowInTableViewCellForRowInTableViewCellForRowInTableViewCellForRowInTableViewCellForRowInTableViewCellForRowInTableViewCellForRowInTableViewCellForRowInTableViewCellForRowInTableView";
        public TableViewCell CellForRowInTableView(TableView.TableView tableView, int row)
        {
            ExampleTableViewCell cell = tableView.ReusableCellForRow("ExampleTableViewCell", row) as  ExampleTableViewCell;
            cell.name = "Cell " + row;

            int rand = Random.Range(1, 100);
            if (rand > 50)
            {
                tableView.ReloadSizeInRow(cell.SetTxt(row + s_txt), row);
            }
            else
            {
                tableView.ReloadSizeInRow(80,row);
                cell.SetTxt(row + " haha");
            }
            
            return cell;
        }

        public void TableViewDidHighlightCellForRow(TableView.TableView tableView, int row)
        {
            print("TableViewDidHighlightCellForRow : " + row);
        }

        public void TableViewDidSelectCellForRow(TableView.TableView tableView, int row)
        {
            print("TableViewDidSelectCellForRow : " + row);
        }
    }
}