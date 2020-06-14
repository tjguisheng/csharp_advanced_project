using System;
using System.Collections.Generic;
using System.Linq;
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
    /// Interaction logic for WindowAddRecord.xaml
    /// </summary>
    public partial class WindowAddRecord : Window
    {
        public readonly DataAccess da = new DataAccess();
        public int carID { get; set; }
        public WindowAddRecord(int carID)
        {
            
            InitializeComponent();
            this.carID = carID;
        }

        private void btnCancelAddRecord_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void btnSaveAddRecord_Click(object sender, RoutedEventArgs e)
        {
            Record record = new Record()
            {
                
                CarID = carID,
                DateTime = dp.SelectedDate.Value.Date,
                ODO = int.Parse(tbODO.Text),
                Id = da.MaxRecordId() + 1,
                Payment = double.Parse(tbCost.Text),
                Volume = double.Parse(tbVolume.Text)
            };

            int result = da.AddRecord(record);
            btnCancelAddRecord_Click(sender, null);

            if (result != -1)    //Sucess
            {
                MessageBox.Show("New Fuel Record added",
                    "Success",
                    MessageBoxButton.OK,
                    MessageBoxImage.Information);
                
                
            }
            else
            {
                MessageBox.Show($"Something went wrong.",
                    "Error",
                    MessageBoxButton.OK,
                    MessageBoxImage.Error);
            }
        }


    }
}
