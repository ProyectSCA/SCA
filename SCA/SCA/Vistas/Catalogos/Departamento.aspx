<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Departamento.aspx.cs" Inherits="SCA.Vistas.Catalogos.Departamento" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <form class="form-horizontal" runat="server">
        <br />
        <div class="panel panel-default">
            <div class="panel-heading"><font color="grey"><label class="bold">Ingreso Departamento</label></font></div>
            <div class="panel-body">
                <div class="col-md-4">
                    <fieldset>
                        <div class="form-group">
                            <label for="inputEmail" class="col-lg-6 control-label">Codigo Departamento</label>
                            <div class="col-lg-6">
                                <asp:TextBox ID="TxtCodigoDepartamento" class="form-control" placeholder="codigo del departamento" runat="server" />
                            </div>
                            <label for="inputEmail" class="col-lg-6 control-label">Nombre del Departamento</label>
                            <div class="col-lg-6">
                                <asp:TextBox ID="TxtNombreDepartamento" class="form-control" placeholder="Nombre del Departamento" runat="server" />
                            </div>
                            <label for="inputEmail" class="col-lg-6 control-label">Descripcion</label>
                            <div class="col-lg-6">
                                <asp:TextBox ID="TxtDescripcionDepartamento" class="form-control" placeholder="Descripcion del Departamento" runat="server" />
                            </div>
                            <div class="col-md-6">
                                <asp:Button ID="BtnInsertar" CssClass="btn btn-primary" runat="server" Text="Guardar" OnClick="btnInsertar" />
                            </div>
                        </div>
                    </fieldset>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <asp:GridView ID="TablaDepartamento" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id_departamento" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField HeaderText="Operaciones" ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="codigo_departamento" HeaderText="Codigo del Departamento" SortExpression="codigo_departamento" />
                    <asp:BoundField DataField="nombre" HeaderText="Nombre del Departamento" SortExpression="nombre" />
                    <asp:BoundField DataField="descripcion" HeaderText="Descripcion del Departamento" SortExpression="descripcion" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:SCA.Properties.Settings.Conexion %>" DeleteCommand="DELETE FROM [Departamento] WHERE [id_departamento] = @original_id_departamento AND [codigo_departamento] = @original_codigo_departamento AND [nombre] = @original_nombre AND [descripcion] = @original_descripcion" InsertCommand="INSERT INTO [Departamento] ([codigo_departamento], [nombre], [descripcion]) VALUES (@codigo_departamento, @nombre, @descripcion)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Departamento]" UpdateCommand="UPDATE [Departamento] SET [codigo_departamento] = @codigo_departamento, [nombre] = @nombre, [descripcion] = @descripcion WHERE [id_departamento] = @original_id_departamento AND [codigo_departamento] = @original_codigo_departamento AND [nombre] = @original_nombre AND [descripcion] = @original_descripcion">
                <DeleteParameters>
                    <asp:Parameter Name="original_id_departamento" Type="Decimal" />
                    <asp:Parameter Name="original_codigo_departamento" Type="String" />
                    <asp:Parameter Name="original_nombre" Type="String" />
                    <asp:Parameter Name="original_descripcion" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="codigo_departamento" Type="String" />
                    <asp:Parameter Name="nombre" Type="String" />
                    <asp:Parameter Name="descripcion" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="codigo_departamento" Type="String" />
                    <asp:Parameter Name="nombre" Type="String" />
                    <asp:Parameter Name="descripcion" Type="String" />
                    <asp:Parameter Name="original_id_departamento" Type="Decimal" />
                    <asp:Parameter Name="original_codigo_departamento" Type="String" />
                    <asp:Parameter Name="original_nombre" Type="String" />
                    <asp:Parameter Name="original_descripcion" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
        </form>
</asp:Content>
