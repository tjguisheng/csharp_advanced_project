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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace QuanProject
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public readonly DataAccess da = new DataAccess();
        //CarNoteEntities carNote = new CarNoteEntities();

        public MainWindow()
        {
            InitializeComponent();
        }
        
        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            cbBoxCarSelect.ItemsSource = da.GetCars();
            cbBoxCarSelect.DisplayMemberPath = "CarName";
            cbBoxCarSelect.SelectedValuePath = "CarID";
            cbBoxCarSelect.SelectedValue = 1;
            SetInfo(1);

        }

        private void btnAddRecord_Click(object sender, RoutedEventArgs e)
        {
            int carid = int.Parse(cbBoxCarSelect.SelectedValue.ToString());
            WindowAddRecord windowAddRecord = new WindowAddRecord(carid);
            windowAddRecord.Show();
        }

        private void btnAddCar_Click(object sender, RoutedEventArgs e)
        {
            WindowAddCar windowAddCar = new WindowAddCar();
            windowAddCar.Show();
        }



        public void SetInfo(int carID)
        {
            CarNoteEntities context = new CarNoteEntities();
            
            // Get records sorted for the car
            var sortedRecords = context.Records.Where(r => r.CarID == carID)
                                                .OrderByDescending(r => r.DateTime)
                                                .ToList();

            // Set latest fuel efficiency
            try
            {
                double latestFE = sortedRecords[1].Volume / (sortedRecords[0].ODO - sortedRecords[1].ODO);
                lbLatestFE.Content = latestFE.ToString("F");
            }
            catch
            {
                lbLatestFE.Content = "--";
            }

            // Set total fuel efficiency
            try
            {
                var totalFuel = sortedRecords.Sum(r => r.Volume) - sortedRecords[0].Volume;
                var totalODO = sortedRecords[0].ODO - sortedRecords.Last().ODO;
                var totalFE = totalFuel / totalODO;
                lbTotalFE.Content = totalFE.ToString("F");
            }
            catch
            {
                lbTotalFE.Content = "--";
            }

            // Set average travel
            try
            {
                var totalODO = sortedRecords[0].ODO - sortedRecords.Last().ODO;
                var totalDay = (sortedRecords[0].DateTime - sortedRecords.Last().DateTime).TotalDays;
                var averageTravel = totalODO / totalDay;
                lbAverageTravel.Content = averageTravel.ToString("F");
            }
            catch 
            {

                lbAverageTravel.Content = "--";
            }

            // Set average cost
            try
            {
                var totalODO = sortedRecords[0].ODO - sortedRecords.Last().ODO;
                var totalCost = sortedRecords.Sum(r => r.Payment) - sortedRecords[0].Payment;
                var averageCost = totalCost / totalODO;
                lbAverageCost.Content = averageCost.ToString("F");
            }
            catch 
            {
                lbAverageCost.Content = "--";

            }
        }

        private void cbBoxCarSelect_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            SetInfo((int)(cbBoxCarSelect.SelectedValue));
        }

        private void btnRecordList_Click(object sender, RoutedEventArgs e)
        {
            int carid = int.Parse(cbBoxCarSelect.SelectedValue.ToString());
            WindowRecordList windowAddRecord = new WindowRecordList(carid);
            windowAddRecord.Show();
        }
    }
}
