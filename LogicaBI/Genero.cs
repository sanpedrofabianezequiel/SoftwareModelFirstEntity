using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LogicaBI
{
    public class Genero
    {
        
        public static void Agregar(Entidades.Genero genero)
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

        public static List<Entidades.Genero> TraerTodos()
        {

            return Datos.Genero.TraerTodos();
        }

        public static void Modificar(Entidades.Genero genero)
        {
            Datos.Genero.Modificar(genero);
        }

        public static void Borrar(Entidades.Genero genero)
        {

            Datos.Genero.Borrar(genero);

        }
    }
}