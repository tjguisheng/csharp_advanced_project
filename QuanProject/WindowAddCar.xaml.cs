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
    /// Interaction logic for WindowAddCar.xaml
    /// </summary>
    public partial class WindowAddCar : Window
    {
        public readonly DataAccess da = new DataAccess();
        public WindowAddCar()
        {
            InitializeComponent();
        }

        private void btnSaveAddCar_Click(object sender, RoutedEventArgs e)
        {
            
            Car car = new Car()
            {
                CarID = da.MaxCarId() + 1,
                CarName = tbCarName.Text
            };

            int result = da.AddCar(car);
            tbCarName.Clear();
            if(result != -1)    //Sucess
            {
                MessageBox.Show("New Car added",
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

        private void btnCancelAddCar_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }
    }
}
