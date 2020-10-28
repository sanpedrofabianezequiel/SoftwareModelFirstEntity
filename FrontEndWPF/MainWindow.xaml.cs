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

namespace FrontEndWPF
{
    /// <summary>
    /// Lógica de interacción para MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        LogicaBI.Genero bi = new LogicaBI.Genero();
        public MainWindow()
        { 
            InitializeComponent();
        }

        //Creamos el LOAD

        public void CargaGrilla()
        {
            List<Entidades.Genero> listaGeneros = bi.TraerTodos();
            dgGeneros.ItemsSource = listaGeneros;
            dgGeneros.Columns[0].Width = 50;//id
            dgGeneros.Columns[1].Width = 150;//Nombre
            dgGeneros.Columns[2].Visibility = Visibility.Hidden;
        
        }
    }
}
