<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Tipo_Accesorio.aspx.cs" Inherits="SCA.Vistas.Catalogos.Tipo_Accesorio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <form class="form-horizontal" runat="server">
        <br />
        <div class="panel panel-default">
            <div class="panel-heading"><font color="grey"><label class="bold">Ingreso Tipo de Accesorio de Computo</label></font></div>                
            <div class="panel-body">
                <div class="col-md-5">
                    <fieldset>
                        <div class="form-group">
                            <label for="inputEmail" class="col-lg-2 control-label">Accesorio</label>
                            <div class="col-lg-6">
                                <asp:TextBox ID="TxtAccesorio" class="form-control" placeholder="Nombre del Accesorio" runat="server" TabIndex="1" />
                            </div>        
                            <div class="col-md-2">
                                <asp:Button ID="BtnGuardar" runat="server" Text="Guardar" CssClass="btn btn-primary" OnClick="BtnGuardar_Click" TabIndex="3" />
                            </div>
                            
                        </div>  
                        <div class="form-group">
                                <label for="textArea" class="col-lg-2 control-label">Descripcion</label>
                                <div class="col-lg-8">
                                    <asp:TextBox ID="TxtADescripcion" TextMode="multiline" Columns="50" Rows="5" CssClass="form-control" runat="server" TabIndex="2" />
                                </div>
                            </div>                      
                    </fieldset>
                </div>
            </div>
        
        </div>
        <div class="col-md-6">
            <asp:GridView ID="TablaTipoAccesorio" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id_tipo_accesorio" CssClass="table table-striped" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                    <asp:BoundField DataField="descripcion" HeaderText="descripcion" SortExpression="descripcion" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:SCA.Properties.Settings.Conexion %>" DeleteCommand="DELETE FROM [Tipo_Accesorio] WHERE [id_tipo_accesorio] = @original_id_tipo_accesorio and [nombre] = @original_nombre and [descripcion] = @original_descripcion" InsertCommand="INSERT INTO [Tipo_Accesorio] ([nombre], [descripcion]) VALUES (@nombre, @descripcion)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Tipo_Accesorio]" UpdateCommand="UPDATE [Tipo_Accesorio] SET [nombre] = @nombre, [descripcion] = @descripcion WHERE [id_tipo_accesorio] = @original_id_tipo_accesorio AND [nombre] = @original_nombre AND [descripcion] = @original_descripcion">
                <DeleteParameters>
                    <asp:Parameter Name="original_id_tipo_accesorio" Type="Decimal" />
                    <asp:Parameter Name="original_nombre" Type="String" />
                    <asp:Parameter Name="original_descripcion" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="nombre" Type="String" />
                    <asp:Parameter Name="descripcion" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="nombre" Type="String" />
                    <asp:Parameter Name="descripcion" Type="String" />
                    <asp:Parameter Name="original_id_tipo_accesorio" Type="Decimal" />
                    <asp:Parameter Name="original_nombre" Type="String" />
                    <asp:Parameter Name="original_descripcion" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
        
    </form>
    
</asp:Content>
