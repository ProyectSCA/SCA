<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Procesador.aspx.cs" Inherits="SCA.Vistas.Catalogos.Procesador" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <form class="form-horizontal" runat="server">
        <br />
        <div class="panel panel-default">
            <div class="panel-heading"><font color="grey"><label class="bold">Ingreso de Procesador</label></font></div>                
            <div class="panel-body">
                <div class="col-md-4">
                    <fieldset>
                        <div class="form-group">
                            <label for="inputEmail" class="col-lg-2 control-label">Procesador</label>
                            <div class="col-lg-6">
                                <asp:TextBox ID="TxtNombreProcesador" class="form-control" placeholder="Nombre Procesador" runat="server" />  
                            </div>
                            <div class="col-md-4">
                                <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" Text="Guardar" OnClick="btnInsertar" />
                            </div>
                        </div>                        
                    </fieldset>
                </div>
            </div>
        </div>
        <asp:GridView ID="TablaProcesadores" runat="server" AutoGenerateColumns="False" DataKeyNames="id_procesador" DataSourceID="SqlDataSource1" CssClass="table table-striped" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="nombre" HeaderText="Tipo Procesador" SortExpression="nombre" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SCA.Properties.Settings.Conexion %>" SelectCommand="SELECT * FROM [Procesador]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Procesador] WHERE [id_procesador] = @original_id_procesador AND [nombre] = @original_nombre" InsertCommand="INSERT INTO [Procesador] ([nombre]) VALUES (@nombre)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Procesador] SET [nombre] = @nombre WHERE [id_procesador] = @original_id_procesador AND [nombre] = @original_nombre">
            <DeleteParameters>
                <asp:Parameter Name="original_id_procesador" Type="Decimal" />
                <asp:Parameter Name="original_nombre" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="nombre" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="nombre" Type="String" />
                <asp:Parameter Name="original_id_procesador" Type="Decimal" />
                <asp:Parameter Name="original_nombre" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
    
</asp:Content>
