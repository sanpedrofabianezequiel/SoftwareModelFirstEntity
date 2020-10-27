using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Datos
{
    public static class Genero
    {
        //El Nombre que le asignemos el contenedor ejemplo DBContext
        static Entidades.Model1Container _contexto = new Entidades.Model1Container();//Lo usariamos con linq

        public static void Agregar(Entidades.Genero genero)
        {
            _contexto.Generos.Add(genero);
            _contexto.SaveChanges();
        }

        public static List<Entidades.Genero> TraerTodos()
        {

            return _contexto.Generos.ToList();
        }

        public static void Modificar(Entidades.Genero genero)
        {
            Entidades.Genero data = _contexto.Generos.Find(genero.Id);

            data.Id = genero.Id;
            data.Nombre = genero.Nombre;
            _contexto.SaveChanges();  
        }

        public static void Borrar(Entidades.Genero genero)
        {
            _contexto.Generos.Remove(genero);
            _contexto.SaveChanges();


        }


    }
}
