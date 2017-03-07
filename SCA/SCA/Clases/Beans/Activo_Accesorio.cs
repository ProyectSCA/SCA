using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SCA.Clases.Beans
{
    public class Activo_Accesorio
    {
        private int id_activo_accesorio;
        private string modelo;
        private string no_serie;
        private string codigo_inventario;
        private string fecha_compra;
        private int no_factura;
        private float precio;
        private string fecha_baja;
        private float precio_actual;
        private int id_tipo_accesorio;
        private int id_empleado;
        private int id_estado_del_activo;
        private int id_cuenta;
        private int id_proveedor;

        public int Id_activo_accesorio
        {
            get
            {
                return id_activo_accesorio;
            }

            set
            {
                id_activo_accesorio = value;
            }
        }

        public string Modelo
        {
            get
            {
                return modelo;
            }

            set
            {
                modelo = value;
            }
        }

        public string No_serie
        {
            get
            {
                return no_serie;
            }

            set
            {
                no_serie = value;
            }
        }

        public string Codigo_inventario
        {
            get
            {
                return codigo_inventario;
            }

            set
            {
                codigo_inventario = value;
            }
        }

        public string Fecha_compra
        {
            get
            {
                return fecha_compra;
            }

            set
            {
                fecha_compra = value;
            }
        }

        public int No_factura
        {
            get
            {
                return no_factura;
            }

            set
            {
                no_factura = value;
            }
        }

        public float Precio
        {
            get
            {
                return precio;
            }

            set
            {
                precio = value;
            }
        }

        public string Fecha_baja
        {
            get
            {
                return fecha_baja;
            }

            set
            {
                fecha_baja = value;
            }
        }

        public float Precio_actual
        {
            get
            {
                return precio_actual;
            }

            set
            {
                precio_actual = value;
            }
        }

        public int Id_tipo_accesorio
        {
            get
            {
                return id_tipo_accesorio;
            }

            set
            {
                id_tipo_accesorio = value;
            }
        }

        public int Id_empleado
        {
            get
            {
                return id_empleado;
            }

            set
            {
                id_empleado = value;
            }
        }

        public int Id_estado_del_activo
        {
            get
            {
                return id_estado_del_activo;
            }

            set
            {
                id_estado_del_activo = value;
            }
        }

        public int Id_cuenta
        {
            get
            {
                return id_cuenta;
            }

            set
            {
                id_cuenta = value;
            }
        }

        public int Id_proveedor
        {
            get
            {
                return id_proveedor;
            }

            set
            {
                id_proveedor = value;
            }
        }
    }
}