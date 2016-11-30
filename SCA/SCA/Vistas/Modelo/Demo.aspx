<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Demo.aspx.cs" Inherits="SistemaControlInventarios.Vistas.Modelo.Demo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <br>
    <div class="panel panel-default">
       
        <div class="panel-heading"><font color="grey"><label class="bold">Ingreso de Computadora</label></font></div>
        <div class="panel-body">

              <!--Formulario 1-->

        <div class="col-md-6" >
            <form class="form-horizontal" runat="server">
                <fieldset>
                  
                    <div class="form-group">
                        <label for="inputEmail" class="col-lg-2 control-label">Email</label>
                        <div class="col-lg-10">
                            <asp:TextBox id="TxtEmail" class="form-control" placeholder="Email" runat="server"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputPassword" class="col-lg-2 control-label">Password</label>
                        <div class="col-lg-10">
                           <asp:TextBox id="TxtPassword" class="form-control" placeholder="Password" runat="server" TextMode="Password" />
                            <div class="checkbox">
                                <label>
                                    <asp:CheckBox ID="CheckBox1" runat="server" />
                                    Checkbox
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="textArea" class="col-lg-2 control-label">Textarea</label>
                        <div class="col-lg-10">                     
                            <asp:TextBox id="TextArea1" TextMode="multiline" Columns="50" Rows="5" cssclass="form-control" runat="server" />
                           
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputEmail" class="col-lg-2 control-label">Email</label>
                        <div class="col-lg-10">
                            <asp:TextBox ID="TextBox1" class="form-control" placeholder="Email" runat="server" />
                        </div>
                    </div>

                </fieldset>
           
        </div>
            <div class="form-group col-md-6">
                <div class="form-group">
                    <label for="inputEmail" class="col-lg-2 control-label">Nombre</label>
                    <div class="col-lg-10">
                        <asp:TextBox ID="TxtNombre" class="form-control" placeholder="Nombre" runat="server" />
                    </div>
                </div>
                        <label class="col-lg-2 control-label">Radios</label>
                        <div class="col-lg-10">
                            <div class="radio">
                                <label>
                                    <asp:RadioButton ID="RadioButton1" runat="server" GroupName="Grupo1" />
                                    Option one is this
                                </label>
                            </div>
                            <div class="radio">
                                <label>
                                     <asp:RadioButton ID="RadioButton2" runat="server" GroupName="Grupo1" />
                                    Option two can be something else
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="select" class="col-lg-2 control-label">Selects</label>
                        <div class="col-lg-10">
                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control"></asp:DropDownList>
                            <br>                 
                        </div>
                    </div>

            

       
            

        </div>
        
        
        
    </div>
     <div class="form-group col-md-5 col-md-offset-5 ">
                <div >

                    <asp:Button ID="Button1" CssClass="btn btn-default" runat="server" Text="Cancelar" />
                    <asp:Button ID="Button2" CssClass="btn btn-primary" runat="server" Text="Enviar" />
                </div>
         </div> 
    </form>
</asp:Content>
