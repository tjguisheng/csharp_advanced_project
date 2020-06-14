using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Remoting.Contexts;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace QuanProject
{
    /// <summary>
    /// Interaction logic for WindowRecordList.xaml
    /// </summary>
    public partial class WindowRecordList : Window
    {
        public int carID { get; set; }
        CarNoteEntities context = new CarNoteEntities();
        public WindowRecordList(int carID)
        {
            InitializeComponent();
            this.carID = carID;

        }

        private void dgRecordList_Loaded(object sender, RoutedEventArgs e)
        {
            //CarNoteEntities context = new CarNoteEntities();
            var thisRecords = context.Records.Where(r => r.CarID == carID).ToList();
            dgRecordList.DataContext = thisRecords;
        }


        private void btDeleteRecord_Click(object sender, RoutedEventArgs e)
        {
            DataAccess da = new DataAccess();
            Record record = (Record)dgRecordList.SelectedItem;
            if(record != null)
            {
                da.DeleteRecord(record.Id);
                dgRecordList.Items.Refresh();
            }
        }
    }
}
