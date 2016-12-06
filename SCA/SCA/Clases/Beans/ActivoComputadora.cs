using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SCA.Clases.Beans
{
    public class ActivoComputadora
    {
        private int id_activo;
        private string modelo;
        private string no_serie;
        private int memoria;
        private int capacidad_hdd;
        private string codigo_inventario;
        private DateTime fecha_compra;
        private int no_factura;
        private float precio;
        private DateTime fecha_baja;
        private float precio_actual;
        private string direccion_ip;
        private int id_procesador;
        private int id_so;
        private int id_empleado;
        private int id_tipocomputadora;
        private int id_marca;
        private int id_estado_del_activo;
        private int id_cuenta;
        private int id_proveedor;

        public int Id_activo
        {
            get
            {
                return id_activo;
            }

            set
            {
                id_activo = value;
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

        public int Memoria
        {
            get
            {
                return memoria;
            }

            set
            {
                memoria = value;
            }
        }

        public int Capacidad_hdd
        {
            get
            {
                return capacidad_hdd;
            }

            set
            {
                capacidad_hdd = value;
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

        public DateTime Fecha_compra
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

        public DateTime Fecha_baja
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

        public string Direccion_ip
        {
            get
            {
                return direccion_ip;
            }

            set
            {
                direccion_ip = value;
            }
        }

        public int Id_procesador
        {
            get
            {
                return id_procesador;
            }

            set
            {
                id_procesador = value;
            }
        }

        public int Id_so
        {
            get
            {
                return id_so;
            }

            set
            {
                id_so = value;
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

        public int Id_tipocomputadora
        {
            get
            {
                return id_tipocomputadora;
            }

            set
            {
                id_tipocomputadora = value;
            }
        }

        public int Id_marca
        {
            get
            {
                return id_marca;
            }

            set
            {
                id_marca = value;
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