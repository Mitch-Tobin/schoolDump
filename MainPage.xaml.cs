using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.InteropServices.WindowsRuntime;
using System.ServiceModel.Channels;
using Windows.Foundation;
using Windows.Foundation.Collections;
using Windows.UI.Xaml;
using Windows.UI.Xaml.Controls;
using Windows.UI.Xaml.Controls.Primitives;
using Windows.UI.Xaml.Data;
using Windows.UI.Xaml.Input;
using Windows.UI.Xaml.Media;
using Windows.UI.Xaml.Navigation;


// The Blank Page item template is documented at https://go.microsoft.com/fwlink/?LinkId=402352&clcid=0x409

namespace lab2FinalCopy_MitchellTobin
{
    /// <summary>
    /// An empty page that can be used on its own or navigated to within a Frame.
    /// </summary>
    public sealed partial class MainPage : Page
    {
        public MainPage()
        {
            this.InitializeComponent();
        }

      

        public void RadioButton_Checked(object sender, RoutedEventArgs e)
        {
    
            if (radioButton1.IsChecked == true)
            {

                double calculateDistanceKM()
                {
                    double miles = Convert.ToDouble(start.Text);
                    double km = miles * 1.6;
                        return km;
                }

            }
            else
            {
                double calculateDistanceMiles()
                {
                    double km = Convert.ToDouble(start.Text);
                    double miles = km * 1.6;
                    return miles;
                }
            }


        }

        private void convert(object sender, RoutedEventArgs e)
        {
            solution.Text = "";
        }

        private void reset(object sender, RoutedEventArgs e)
        {
            solution.Text = "";
        }
        
    }
}
