<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TipoComputadora.aspx.cs" Inherits="SCA.Vistas.Catalogos.TipoComputadora" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <form class="form-horizontal" runat="server">
        <br />
        <div class="panel panel-default">
            <div class="panel-heading"><font color="grey"><label class="bold">Ingreso de Tipo Computadora</label></font></div>
            <div class="panel-body">
                <div class="col-md-4">
                    <fieldset>
                        <div class="form-group">
                            <label for="inputEmail" class="col-lg-2 control-label">Tipo Computadora</label>
                            <div class="col-lg-6">
                                <asp:TextBox ID="TxtTipoComputadora" class="form-control" placeholder="Tipo Computadora" runat="server" />
                            </div>
                            <div class="col-md-4">
                                <asp:Button ID="BtnGuardar" CssClass="btn btn-primary" runat="server" Text="Guardar" OnClick="btnInsertar" />
                            </div>
                        </div>
                    </fieldset>
                </div>

            </div>
        </div>

        <div class="col-md-6">
            <asp:GridView ID="TablaTipoComputadora" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id_tipocomputadora" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" CssClass="table table-striped">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField HeaderText="Operaciones" ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="nombre" HeaderText="TipoComputadora" SortExpression="nombre" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:SCA.Properties.Settings.Conexion %>" DeleteCommand="DELETE FROM [Tipo_Computadora] WHERE [id_tipocomputadora] = @original_id_tipocomputadora AND [nombre] = @original_nombre" InsertCommand="INSERT INTO [Tipo_Computadora] ([nombre]) VALUES (@nombre)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Tipo_Computadora]" UpdateCommand="UPDATE [Tipo_Computadora] SET [nombre] = @nombre WHERE [id_tipocomputadora] = @original_id_tipocomputadora AND [nombre] = @original_nombre">
                <DeleteParameters>
                    <asp:Parameter Name="original_id_tipocomputadora" Type="Decimal" />
                    <asp:Parameter Name="original_nombre" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="nombre" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="nombre" Type="String" />
                    <asp:Parameter Name="original_id_tipocomputadora" Type="Decimal" />
                    <asp:Parameter Name="original_nombre" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</asp:Content>
