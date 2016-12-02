<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AccesoriosComputo.aspx.cs" Inherits="SCA.Vistas.Activos.AccesoriosComputo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <br>
    <div class="panel panel-default">
       
        <div class="panel-heading"><font color="grey"><label class="bold">Ingreso de Accesorios de Computo</label></font></div>
        <div class="panel-body">

              <!--Formulario 1-->

        <div class="col-md-6" >
            <form class="form-horizontal" runat="server">
                <fieldset>
                  
                    <div class="form-group">
                        <label for="inputAccesorio" class="col-lg-2 control-label">Accesorio</label>
                         <div class="col-lg-10">
                            <asp:DropDownList ID="DropTipoAccesorio" runat="server" CssClass="form-control">
                               
                             </asp:DropDownList>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputMarca" class="col-lg-2 control-label">Marca</label>
                        <div class="col-lg-10">
                           <asp:TextBox id="TxtMarca" class="form-control" placeholder="Marca" runat="server"/>
                        </div>   
                    </div>
                    <div class="form-group">
                        <label for="inputModelo" class="col-lg-2 control-label">Modelo</label>
                        <div class="col-lg-10">
                           <asp:TextBox id="TxtModelo" class="form-control" placeholder="Modelo" runat="server"/>
                        </div>   
                    </div>
                    <div class="form-group">
                        <label for="inputSerie" class="col-lg-2 control-label">Serie</label>
                        <div class="col-lg-10">
                           <asp:TextBox id="TxtSerie" class="form-control" placeholder="Serie" runat="server"/>
                        </div>   
                    </div>
                    <div class="form-group">
                        <label for="inputModelo" class="col-lg-2 control-label">No. Factura</label>
                        <div class="col-lg-4">
                           <asp:TextBox id="TxtFactura" class="form-control" placeholder="Numero de Factura" runat="server"/>
                        </div>
                        <label for="inputModelo" class="col-lg-1 control-label">Costo</label>
                        <div class="col-lg-5">
                           <asp:TextBox id="TxtCosto" class="form-control" placeholder="Costo" runat="server"/>
                        </div>      
                    </div>
     
                     <div class="form-group">
                        <label for="inputModelo" class="col-lg-2 control-label">Fecha</label>
                        <div class="col-lg-3">                
                           <asp:TextBox Id="FechaCompra" class="form-control" placeholder="Dia/Mes/Año" runat="server" ></asp:TextBox>
                        </div> 
                         <label for="inputProveedor" class="col-lg-2 control-label">Proveedor</label>
                         <div class="col-lg-5">
                            <asp:DropDownList ID="DropProveedor" runat="server" CssClass="form-control"></asp:DropDownList>
                        </div>  
                    </div>
                    
                    <div class="form-group">
                        
                    </div>
                  

                </fieldset>
           
        </div>
            <div class="form-group col-md-6">
                
                        <label class="col-lg-2 control-label">Cuenta</label>
                        <div class="col-lg-9">
                            <div class="radio">
                                <label>
                                     <asp:RadioButton ID="RbtnDepreciacion" runat="server" GroupName="Grupo1" Checked="True"/>
                                    Depreciacion
                                </label>
                            </div>
                            <div class="radio">
                                <label>
                                    <asp:RadioButton ID="RbtnGasto" runat="server" GroupName="Grupo1"  />
                                    Gasto
                                </label>
                            </div>
                            
                        </div>
                
                    </div>
                    <div class="form-group col-md-6">
                        <label for="select" class="col-lg-2 control-label">Departamento</label>
                        <div class="col-lg-10">
                            <asp:DropDownList ID="DropDepto" runat="server" CssClass="form-control"></asp:DropDownList>                
                        </div>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="select" class="col-lg-2 control-label">Empleado</label>
                        <div class="col-lg-10">
                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control"></asp:DropDownList>                
                        </div>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="inputSerie" class="col-lg-2 control-label">Codigo de Inventario</label>
                        <div class="col-lg-3">   
                           <input type="text" class="form-control" id="TxtPrefijo" placeholder="Prefijo" disabled="disabled">         
                           <!--<asp:TextBox id="TxtPrefijo" class="form-control"   runat="server"/>-->
                        </div>   
                        
                         <div class="col-lg-3">                   
                           <asp:TextBox id="TxtSufijo" class="form-control" placeholder="Sufijo" runat="server"/>                          
                        </div>  
                    </div>     
        </div>            
    </div>
     <div class="form-group col-md-5 col-md-offset-5 ">
                <div >

                    <asp:Button ID="Button1" CssClass="btn btn-default" runat="server" Text="Cancelar" />
                    <asp:Button ID="Button2" CssClass="btn btn-primary" runat="server" Text="Guardar" />
                </div>
         </div> 
    </form>

</asp:Content>
