//namespace Report
//{
//    public partial class MainPage : ContentPage
//    {
//        int count = 0;

//        public MainPage()
//        {
//            InitializeComponent();
//        }

//        private void OnCounterClicked(object sender, EventArgs e)
//        {
//            count++;

//            if (count == 1)
//                CounterBtn.Text = $"Clicked {count} time";
//            else
//                CounterBtn.Text = $"Clicked {count} times";

//            SemanticScreenReader.Announce(CounterBtn.Text);
//        }
//    }

//}

using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace Report
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainPage : ContentPage
    {
        MainViewModel viewModel = new MainViewModel();
        public MainPage()
        {
            InitializeComponent();
            BindingContext = viewModel;
            
        }
        
        //private void Button_Clicked(object sender, EventArgs e)
        //{
        //    viewModel.Save();
        //}

        private async void Button_Clicked_1(object sender, EventArgs e)
        {
            try
            {
                //Single file
                var response = await FilePicker.PickAsync(new PickOptions
                {
                    

                    //PickerTitle = " Please select an image",
                    //FileTypes = FilePickerFileType.Images

                }) ;

                viewModel.FilePathSelected = response.FullPath;

                //if (response.FileName.EndsWith("jpg", StringComparison.OrdinalIgnoreCase) || response.FileName.EndsWith("jpeg", StringComparison.OrdinalIgnoreCase))
                //{
                //    var imageEncodeStream = await FileSystem.OpenAppPackageFileAsync(response.FileName);


                //    // var stream = await response.OpenReadAsync();
                //    // ImageLabel.Source = ImageSource.FromStream(() => stream);
                //    await Shell.Current.DisplayAlert("info", imageEncodeStream.ToString(), " Ok");
                //}
                //else
                //{
                //    await Shell.Current.DisplayAlert("Alert", " Invalid file selected", " Ok");
                //}
            }
            catch (Exception) { }

        }
    }
}
