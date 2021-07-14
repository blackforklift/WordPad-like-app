using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using Microsoft.Win32;
using System.IO;
namespace MyWordPad
{
    public static class CustomCommands ///applicationcommands sınıfı çıkış eylemi barındırmadığından custom çıkış emrini kendimiz yazıyoruz.
    {
        static CustomCommands()
        {
            exitCommand = new RoutedCommand("Exit", typeof(CustomCommands));
        }
        public static RoutedCommand Exit
        {
            get
            {
                return (exitCommand);
            }
        }
        static RoutedCommand exitCommand;
    }

    public partial class MainWindow : Window
    {
        private void colorChooser_SelectedColorChanged(object sender, RoutedPropertyChangedEventArgs<Color? > e) ///toolkitden color picker ı kullanmak için gerekli metod  /// xmlns:ext="http://schemas.xceed.com/wpf/xaml/toolkit" eklemek gerekiyor wpfnin hazır renk seçme toolu yok
        {
            TextRange range = new TextRange(richTextBox1.Selection.Start, richTextBox1.Selection.End);
            if (colorChooser.SelectedColor.HasValue)
            {
                Color C = colorChooser.SelectedColor.Value;
                var Red = C.R;
               var  Green = C.G;
              var  Blue = C.B;
                long colorVal = Convert.ToInt64(Blue * (Math.Pow(256, 0)) + Green * (Math.Pow(256, 1)) + Red * (Math.Pow(256, 2)));
                range.ApplyPropertyValue(RichTextBox.ForegroundProperty, new SolidColorBrush(C));
            }
           
        }

        public MainWindow()
        {
            InitializeComponent();
            cbFonts.SelectionChanged += new SelectionChangedEventHandler(cbFonts_SelectionChanged); 
        }

        void cbFonts_SelectionChanged(object sender, SelectionChangedEventArgs e)  ///font size değiştirmek için gerekli metod
        {
            TextRange range = new TextRange(richTextBox1.Selection.Start, richTextBox1.Selection.End); /// yazının seçili kısmını alır
            range.ApplyPropertyValue(RichTextBox.FontFamilyProperty, cbFonts.SelectedValue); ///fontu set et 
        }

        private void newbinding_CanExecute(object sender, CanExecuteRoutedEventArgs e)    ///commandbinding deki command bileşeni bize open save new özelliklerini eklemede kolaylık sağlar can executeolayın gerçekleşip gerçekleşemeyeceğine bakarken excute olayı gerçekleştirir
        {
            e.CanExecute = true;
        }

        private void newbinding_Executed(object sender, ExecutedRoutedEventArgs e)
        {
            TextRange range = new TextRange(richTextBox1.Document.ContentStart, richTextBox1.Document.ContentEnd); ///yazılanı al richtextboxdaki, bütün seçilen yazıları almak için textrange class kullanılıyor
            range.Text = "";  ///temizle
            this.Title = "Untitled";
        }

        private void openbinding_CanExecute(object sender, CanExecuteRoutedEventArgs e)
        {
            e.CanExecute = true;
        }

        private void openbinding_Executed(object sender, ExecutedRoutedEventArgs e) ///var olan rtf dosyasını açan kod
        {
            try
            {
                FileDialog dialog = new OpenFileDialog();
                dialog.Filter = "RTF Files (*.rtf)|*.rtf|All Files(*.*)|*.*";
                dialog.FilterIndex = 1;
                if (dialog.ShowDialog() == true)
                {
                    TextRange range = new TextRange(richTextBox1.Document.ContentStart, richTextBox1.Document.ContentEnd);
                    FileStream stream = new FileStream(dialog.FileName, FileMode.Open, FileAccess.Read, FileShare.None);
                    range.Load(stream, DataFormats.Rtf);
                    stream.Close();
                    this.Title = dialog.FileName;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private void savebinding_CanExecute(object sender, CanExecuteRoutedEventArgs e)
        {
            e.CanExecute = true;
        }

        private void savebinding_Executed(object sender, ExecutedRoutedEventArgs e)  ///yukarıdaki işlemlerin aynısı kayıtetmek için
        {
            try
            {
                FileDialog dialog = new SaveFileDialog();
                dialog.Filter = "RTF Files (*.rtf)|*.rtf|All Files(*.*)|*.*";
                dialog.FilterIndex = 1;
                if (dialog.ShowDialog() == true)
                {
                    TextRange range = new TextRange(richTextBox1.Document.ContentStart, richTextBox1.Document.ContentEnd);
                    FileStream stream = new FileStream(dialog.FileName, FileMode.Create, FileAccess.Write, FileShare.None);
                    range.Save(stream, DataFormats.Rtf);
                    stream.Close();
                    this.Title = dialog.FileName;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private void exitbinding_CanExecute(object sender, CanExecuteRoutedEventArgs e)
        {
            e.CanExecute = true;
        }

        private void exitbinding_Executed(object sender, ExecutedRoutedEventArgs e) /// uygulamadan çık
        {
            Application.Current.Shutdown();
        }



        private void btnAbout_Click(object sender, RoutedEventArgs e)
        {
            MessageBox.Show("MyWordPad.", "About mywordpad", MessageBoxButton.OK, MessageBoxImage.Information);
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {

        }
    }

}
