<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Proveedores.aspx.cs" Inherits="SCA.Vistas.Catalogos.Proveedores" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <br>
    <div class="panel panel-default">

        <div class="panel-heading"><font color="grey"><label class="bold">Ingreso de Proveedor</label></font></div>
        <div class="panel-body">
            <div class="col-md-6">
                <form class="form-horizontal" runat="server">
                    <fieldset>
                        <div class="form-group">
                            <label for="inputNombre" class="col-lg-2 control-label">Nombre de Proveedor</label>
                            <div class="col-lg-10">
                                <asp:TextBox ID="TxtNombre" class="form-control" placeholder="Nombre" runat="server" Height="41px" Width="500px" />
                            </div>
                        </div>
                        <div class="form-group">
                        <label for="textArea" class="col-lg-2 control-label">Descripcion</label>
                        <div class="col-lg-10">                     
                            <asp:TextBox id="TxtDescripcion" TextMode="multiline" Columns="50" Rows="5" cssclass="form-control" runat="server" Width="500px" />
                        </div>
                    </div>
                    </fieldset>
            </div>

            <div class="form-group">
                <label for="inputNit" class="col-lg-1 control-label">Nit de Proveedor</label>
                <div class="col-lg-5">
                    <asp:TextBox ID="TxtNit" class="form-control" placeholder="Nit" runat="server" Height="40px" Width="500px" />
                </div>
            </div>

        </div>
    </div>
    <div class="form-group col-md-5 col-md-offset-5 ">
        <div>
            <asp:Button ID="BtnInsertar" CssClass="btn btn-primary" runat="server" Text="Guardar" OnClick="btnInsertar" />
        </div>
    </div>
    <div class="col-md-10">
        <asp:GridView ID="tablaproveedores" cssClass="table table-striper" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id_proveedor" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" AllowPaging="True">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField HeaderText="Operadores" ShowEditButton="True" />
                <asp:BoundField DataField="nombre" HeaderText="Nombre Proveedor" SortExpression="nombre" />
                <asp:BoundField DataField="nit" HeaderText="Nit Proveedor" SortExpression="nit" />
                <asp:BoundField DataField="descripcion" HeaderText="Descripcion Proveedor" SortExpression="descripcion" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:SCA.Properties.Settings.Conexion %>" DeleteCommand="DELETE FROM [Proveedor] WHERE [id_proveedor] = @original_id_proveedor AND (([nombre] = @original_nombre) OR ([nombre] IS NULL AND @original_nombre IS NULL)) AND (([nit] = @original_nit) OR ([nit] IS NULL AND @original_nit IS NULL)) AND (([descripcion] = @original_descripcion) OR ([descripcion] IS NULL AND @original_descripcion IS NULL))" InsertCommand="INSERT INTO [Proveedor] ([nombre], [nit], [descripcion]) VALUES (@nombre, @nit, @descripcion)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Proveedor]" UpdateCommand="UPDATE [Proveedor] SET [nombre] = @nombre, [nit] = @nit, [descripcion] = @descripcion WHERE [id_proveedor] = @original_id_proveedor AND (([nombre] = @original_nombre) OR ([nombre] IS NULL AND @original_nombre IS NULL)) AND (([nit] = @original_nit) OR ([nit] IS NULL AND @original_nit IS NULL)) AND (([descripcion] = @original_descripcion) OR ([descripcion] IS NULL AND @original_descripcion IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_id_proveedor" Type="Decimal" />
                <asp:Parameter Name="original_nombre" Type="String" />
                <asp:Parameter Name="original_nit" Type="String" />
                <asp:Parameter Name="original_descripcion" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="nombre" Type="String" />
                <asp:Parameter Name="nit" Type="String" />
                <asp:Parameter Name="descripcion" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="nombre" Type="String" />
                <asp:Parameter Name="nit" Type="String" />
                <asp:Parameter Name="descripcion" Type="String" />
                <asp:Parameter Name="original_id_proveedor" Type="Decimal" />
                <asp:Parameter Name="original_nombre" Type="String" />
                <asp:Parameter Name="original_nit" Type="String" />
                <asp:Parameter Name="original_descripcion" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    </form>

</asp:Content>
