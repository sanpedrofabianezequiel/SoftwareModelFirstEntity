using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LogicaBI
{
    public class Genero
    {
        
        public  void Agregar(Entidades.Genero genero)
        {
            try
            {
                Datos.Genero.Agregar(genero);
            }
            catch (Exception)
            {

                throw;
            }

        }

        public  List<Entidades.Genero> TraerTodos()
        {

            return Datos.Genero.TraerTodos();
        }

        public  void Modificar(Entidades.Genero genero)
        {
            Datos.Genero.Modificar(genero);
        }

        public  void Borrar(Entidades.Genero genero)
        {

            Datos.Genero.Borrar(genero);

        }
    }
}