<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Computadoras.aspx.cs" Inherits="SCA.Vistas.Activos.Computadoras" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <br>
    <div class="panel panel-default">
       
        <div class="panel-heading"><font color="grey"><label class="bold">Ingreso de Computadoras</label></font></div>
        <div class="panel-body">

              <!--Formulario 1-->

        <div class="col-md-6" >
            <form class="form-horizontal" runat="server">
                <fieldset>
                    <div class="form-group">
                        
                             <label for="inputProveedor" class="col-lg-2 control-label">Procesador</label>
                         
                        <div class="col-lg-4">
                            <asp:DropDownList ID="DropProcesador" runat="server" CssClass="form-control" DataTextField="nombre" DataValueField="id_procesador" DataSourceID="SqlDataSource1"></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SCA.Properties.Settings.Conexion %>" SelectCommand="SELECT * FROM [Procesador]"></asp:SqlDataSource>
                        </div>  
                   
                        <div class="col-lg-2">
                             <label for="inputProveedor" class="col-lg-2 control-label">Marca</label>
                         </div>
                        <div class="col-lg-4">
                            <asp:DropDownList ID="DropMarca" runat="server" CssClass="form-control" DataTextField="marca" DataValueField="id_marca" DataSourceID="SqlDataSource2"></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SCA.Properties.Settings.Conexion %>" SelectCommand="SELECT * FROM [Marca_Computadora]"></asp:SqlDataSource>
                        </div>  
                    </div>
                    <div class="form-group">
                       
                             <label for="inputProveedor" class="col-lg-2 control-label">Sistema Operativo</label>
                         
                        <div class="col-lg-4">
                            <asp:DropDownList ID="DropSo" runat="server" CssClass="form-control" DataTextField="nombre" DataValueField="id_so" DataSourceID="SqlDataSource3"></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:SCA.Properties.Settings.Conexion %>" SelectCommand="SELECT * FROM [Sistema_Operativo]"></asp:SqlDataSource>
                        </div>  
                   
                        <div class="col-lg-2">
                             <label for="inputProveedor" class="col-lg-2 control-label">Tipo Computadora</label>
                         </div>
                        <div class="col-lg-4">
                            <asp:DropDownList ID="DropTipoComputadora" runat="server" CssClass="form-control" DataTextField="nombre" DataValueField="id_tipocomputadora" DataSourceID="SqlDataSource4"></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:SCA.Properties.Settings.Conexion %>" SelectCommand="SELECT * FROM [Tipo_Computadora]"></asp:SqlDataSource>
                        </div>  
                    </div>
                    
                  
                    <div class="form-group">
                        <label for="inputAccesorio" class="col-lg-2 control-label">Modelo</label>
                         <div class="col-lg-4">
                            <asp:TextBox id="TxtModelo" class="form-control" placeholder="Modelo" runat="server"/>
                        </div>
                        <div class="col-lg-2">
                            <label for="inputMarca" class="col-lg-2 control-label">Serie</label>
                        </div>                    
                        
                        <div class="col-lg-4">
                           <asp:TextBox id="TxtSerie" class="form-control" placeholder="Serie" runat="server"/>
                        </div>   
                    </div>
                    <div class="form-group">
                        <label for="inputModelo" class="col-lg-2 control-label">Memoria</label>
                        <div class="col-lg-4">
                            <asp:DropDownList ID="DropMemoria" runat="server" CssClass="form-control">
                                <asp:ListItem Value="2">2 GB</asp:ListItem>
                                <asp:ListItem Value="4">4 GB</asp:ListItem>
                                <asp:ListItem Value="8">8 GB</asp:ListItem>
                                <asp:ListItem Value="16">16 GB</asp:ListItem>
                                <asp:ListItem Value="32">32 GB</asp:ListItem>
                                <asp:ListItem Value="64">64 GB</asp:ListItem>
                            </asp:DropDownList>
                           
                        </div>
                        <div class="col-lg-2">
                           <label for="inputModelo" class="col-lg-2 control-label">HDD</label>
                        </div>  
                        <div class="col-lg-4">                          
                            <asp:DropDownList ID="DropDisco" runat="server" CssClass="form-control">
                                <asp:ListItem Value="120">120 GB</asp:ListItem>
                                <asp:ListItem Value="500">500 GB</asp:ListItem>
                                <asp:ListItem Value="720">720 GB</asp:ListItem>
                                <asp:ListItem Value="1024">1 TB</asp:ListItem>
                                <asp:ListItem Value="2048">2 TB</asp:ListItem>
                                <asp:ListItem Value="3072">3 TB</asp:ListItem>
                            </asp:DropDownList>
                           
                        </div> 
                    </div>
                    <div class="form-group">
                        <label for="inputModelo" class="col-lg-2 control-label">No. Factura</label>
                        <div class="col-lg-4">
                           <asp:TextBox id="TxtFactura" class="form-control" placeholder="Numero de Factura" runat="server"/>
                        </div>
                        <div class="col-lg-2">
                            <label for="inputModelo" class="col-lg-2 control-label">Fecha</label>
                        </div>
                        
                        <div class="col-lg-4">
                            <asp:TextBox Id="FechaCompra" class="form-control" placeholder="Dia/Mes/Año" runat="server" TextMode="Date" ></asp:TextBox>
                           
                        </div>      
                    </div>
     
                    <div class="form-group">
                        <label for="inputModelo" class="col-lg-2 control-label">Precio</label>
                        <div class="col-lg-4">
                            <asp:TextBox ID="TxtCosto" class="form-control" placeholder="Precio Compra" runat="server" />
                        </div>
                        <div class="col-lg-2">
                            <label for="inputModelo" class="col-lg-2 control-label">Costo Actual</label>
                        </div>
                        
                        <div class="col-lg-4">
                            <asp:TextBox Id="TxtCostoActual" class="form-control" placeholder="Costo Actual" runat="server" ></asp:TextBox>
                           
                        </div>    
                    </div>
                    
                    
                  

                </fieldset>
           
        </div>
            <div class="form-group col-md-6">
                        
                             <label for="inputProveedor" class="col-lg-2 control-label">Proveedor</label>
                         
                        <div class="col-lg-10">
                            <asp:DropDownList ID="DropProveedor" runat="server" CssClass="form-control" DataTextField="nombre" DataValueField="id_proveedor" DataSourceID="SqlDataSource5"></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:SCA.Properties.Settings.Conexion %>" SelectCommand="SELECT [id_proveedor], [nombre] FROM [Proveedor]"></asp:SqlDataSource>
                        </div>  
                
                  
                <div class="form-group">
                        <label for="inputCuenta" class="col-lg-2 control-label">Cuenta</label>
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
                
                    </div>
                    <div class="form-group col-md-6">
                        <label for="select" class="col-lg-2 control-label">Departamento</label>
                        <div class="col-lg-10">
                            <asp:DropDownList ID="DropDepto" AppendDataBoundItems="True" runat="server" CssClass="form-control"  DataTextField="nombre" DataValueField="id_departamento" OnSelectedIndexChanged="DropDepto_SelectedIndexChanged" AutoPostBack="True" DataSourceID="SqlDataSource6">
                               <asp:ListItem Text="Seleccionar" Value="0" />
                            </asp:DropDownList>   
                            <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:SCA.Properties.Settings.Conexion %>" SelectCommand="SELECT [id_departamento], [nombre] FROM [Departamento]"></asp:SqlDataSource>
                        </div>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="select" class="col-lg-2 control-label">Empleado</label>
                        <div class="col-lg-10">
                            <asp:DropDownList ID="DropEmpleado"  runat="server" CssClass="form-control" DataTextField="nombre" DataValueField="id_empleado" EnableViewState="False" DataSourceID="SqlDataSource7"></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:SCA.Properties.Settings.Conexion %>" SelectCommand="SELECT [id_empleado], [nombre] FROM [Empleado] WHERE ([fk_id_departamento] = @fk_id_departamento)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="DropDepto" Name="fk_id_departamento" PropertyName="SelectedValue" Type="Decimal" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </div>
                    </div>
                    
                    <div class="form-group col-md-6">
                        <label for="inputSerie" class="col-lg-2 control-label">Codigo de Inventario</label>
                        <div class="col-lg-3">   
                            <asp:label ID="LblPrefijo" cssclass="form-control" runat="server" Text=""></asp:label>     
                           
                        </div>   
                        
                         <div class="col-lg-3">                   
                           <asp:TextBox id="TxtSufijo" class="form-control" placeholder="Sufijo" runat="server" OnTextChanged="TxtSufijo_TextChanged"/>                          
                        </div>  
                    </div>   
            
                    <div class="form-group col-md-6">
                        <label for="inputSerie" class="col-lg-2 control-label">Direccion IP</label>
                        <div class="col-lg-3">   
                            
                            <asp:TextBox ID="TxtIP" cssclass="form-control" runat="server" EnableViewState="False"></asp:TextBox>     
                                                       
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
