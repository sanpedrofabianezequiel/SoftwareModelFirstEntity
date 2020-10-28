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


        //Selection Changed, el que cambia el Gird
        private void dgGeneros_SelectionChanged(object sender,SelectionChangedEventArgs e) 
        {
            try
            {
                DataGrid dataGrid = sender as DataGrid;//Castiamos el objeto recibido
                DataGridRow row = (DataGridRow)dataGrid.ItemContainerGenerator.ContainerFromIndex(dataGrid.SelectedIndex);
                DataGridCell RowColumn = dataGrid.Columns[0].GetCellContent(row).Parent as DataGridCell;
                txtID.Text = ((TextBlock)RowColumn.Content).Text;
                //Para la siguiente columna
                DataGridCell RowColumn1 = dataGrid.Columns[1].GetCellContent(row).Parent as DataGridCell;
                txtNombre.Text = ((TextBlock)RowColumn1.Content).Text;
            }
            catch (Exception)
            {

               
            }

        }
        private void btnBorrar_Click(object sender,RoutedEventArgs e)
        {
            Entidades.Genero Borrar = new Entidades.Genero();
            Borrar.Id = Convert.ToInt32(this.txtID.Text);
           
            bi.Borrar(Borrar);
            MessageBox.Show("Genero Borrado");
            dgGeneros.DataContext = null;//Lo nuliamos y lo volvemos a llamar
            CargaGrilla();

        }
        private void BtnCerrar_Click(object sender,RoutedEventArgs e) 
        {
            this.Close();
        }
    }
}
