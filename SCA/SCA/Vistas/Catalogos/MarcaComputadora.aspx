<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MarcaComputadora.aspx.cs" Inherits="SCA.Vistas.Catalogos.MarcaComputadora" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <form class="form-horizontal" runat="server">
        <br />
        <div class="panel panel-default">
            <div class="panel-heading"><font color="grey"><label class="bold">Ingreso de Marca de Computadoras</label></font></div>
            <div class="panel-body">
                <div class="col-md-4">
                    <fieldset>
                        <div class="form-group">
                            <label for="inputEmail" class="col-lg-2 control-label">Marca</label>
                            <div class="col-lg-6">
                                <asp:TextBox ID="TxtMarca" class="form-control" placeholder="Marca Procesador" runat="server" />
                            </div>
                            <div class="col-md-4">
                                <asp:Button ID="BtnInsertar" CssClass="btn btn-primary" runat="server" Text="Guardar" OnClick="btnInsertar" />
                            </div>
                        </div>
                    </fieldset>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <asp:GridView ID="TablaMarcaComputadoras" runat="server" CssClass="table table-striped" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id_marca" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField HeaderText="Operaciones" ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="marca" HeaderText="Marcas" SortExpression="marca" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:SCA.Properties.Settings.Conexion %>" DeleteCommand="DELETE FROM [Marca_Computadora] WHERE [id_marca] = @original_id_marca AND [marca] = @original_marca" InsertCommand="INSERT INTO [Marca_Computadora] ([marca]) VALUES (@marca)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Marca_Computadora]" UpdateCommand="UPDATE [Marca_Computadora] SET [marca] = @marca WHERE [id_marca] = @original_id_marca AND [marca] = @original_marca">
                <DeleteParameters>
                    <asp:Parameter Name="original_id_marca" Type="Decimal" />
                    <asp:Parameter Name="original_marca" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="marca" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="marca" Type="String" />
                    <asp:Parameter Name="original_id_marca" Type="Decimal" />
                    <asp:Parameter Name="original_marca" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</asp:Content>
