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
        public void Grid_Loaded(object sender, RoutedEventArgs e)
        {

        }
        public void CargaGrilla()
        {
            List<Entidades.Genero> listaGeneros = bi.TraerTodos();
            dgGeneros.ItemsSource = listaGeneros;
            dgGeneros.Columns[0].Width = 50;//id
            dgGeneros.Columns[1].Width = 150;//Nombre
            dgGeneros.Columns[2].Visibility = Visibility.Hidden;

        }
        //Botones
        private void btnNuevo_Click(object sender, RoutedEventArgs e) 
        {
            Entidades.Genero nuevoGenero = new Entidades.Genero();
            nuevoGenero.Nombre = this.txtNombre.Text;
            bi.Agregar(nuevoGenero);
            MessageBox.Show("Genero Agregado");
            dgGeneros.DataContext = null;//Lo nuliamos y lo volvemos a llamar
            CargaGrilla();
            
        
        }

        private void btnModificar_Click(object sender, RoutedEventArgs e)
        {
            Entidades.Genero nuevoGenero = new Entidades.Genero();
            nuevoGenero.Id = Convert.ToInt32(this.txtID.Text);
            nuevoGenero.Nombre = this.txtNombre.Text;
            bi.Modificar(nuevoGenero);
            MessageBox.Show("Genero Modificado");
            dgGeneros.DataContext = null;//Lo nuliamos y lo volvemos a llamar
            CargaGrilla();


        }


    }
}
