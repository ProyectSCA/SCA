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
                            <asp:DropDownList ID="DropTipoAccesorio" runat="server" CssClass="form-control" DataSourceID="SqlDataSource1" DataTextField="nombre" DataValueField="nombre">
                               
                             </asp:DropDownList>
                             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SCA.Properties.Settings.Conexion %>" SelectCommand="SELECT [nombre] FROM [Tipo_Accesorio]"></asp:SqlDataSource>
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
                            <asp:DropDownList ID="DropProveedor" runat="server" CssClass="form-control" DataSourceID="Proveedor" DataTextField="nombre" DataValueField="nombre"></asp:DropDownList>
                             <asp:SqlDataSource ID="Proveedor" runat="server" ConnectionString="<%$ ConnectionStrings:SCA.Properties.Settings.Conexion %>" SelectCommand="SELECT [nombre] FROM [Proveedor]"></asp:SqlDataSource>
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
                            <asp:DropDownList ID="DropDepto" runat="server" CssClass="form-control" DataSourceID="Depto2" DataTextField="nombre" DataValueField="id_departamento" OnSelectedIndexChanged="DropDepto_SelectedIndexChanged">
                                <asp:ListItem>Seleccionar</asp:ListItem>
                            </asp:DropDownList>                
                            <asp:SqlDataSource ID="Depto2" runat="server" ConnectionString="<%$ ConnectionStrings:SCA.Properties.Settings.Conexion %>" SelectCommand="SELECT [id_departamento], [nombre] FROM [Departamento]"></asp:SqlDataSource>
                            <%Empleado.DataBind();%>
                            <%DropEmpleado.DataBind(); %>
                           
                        </div>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="select" class="col-lg-2 control-label">Empleado</label>
                        <div class="col-lg-10">
                            <asp:DropDownList ID="DropEmpleado" runat="server" CssClass="form-control" DataSourceID="Empleado" DataTextField="nombre" DataValueField="nombre" EnableViewState="False"></asp:DropDownList>                
                            <asp:SqlDataSource ID="Empleado" runat="server" ConnectionString="<%$ ConnectionStrings:SCA.Properties.Settings.Conexion %>" SelectCommand="SELECT [nombre], [id_empleado] FROM [Empleado] WHERE ([fk_id_departamento] = @fk_id_departamento)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="DropDepto" Name="fk_id_departamento" PropertyName="SelectedValue" Type="decimal" />
                                </SelectParameters>
                            </asp:SqlDataSource>
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
                    <asp:Button ID="Button2" CssClass="btn btn-primary" runat="server" Text="Guardar" OnClick="Button2_Click" />
                </div>
         </div> 
    </form>

</asp:Content>
