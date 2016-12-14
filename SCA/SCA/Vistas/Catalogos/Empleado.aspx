<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Empleado.aspx.cs" Inherits="SCA.Vistas.Catalogos.Empleado" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <br>
    <div class="panel panel-default">

        <div class="panel-heading"><font color="grey"><label class="bold">Ingreso de Empleado</label></font></div>
        <div class="panel-body">

            <!--Formulario 1-->

            <div class="col-md-6">
                <form class="form-horizontal" runat="server">
                    <fieldset>
                        <div class="form-group">
                            <label for="inputCodigo" class="col-lg-2 control-label">Codigo</label>
                            <div class="col-lg-10">
                                <asp:TextBox ID="TxtCodigo" class="form-control" placeholder="Codigo" runat="server" TextMode="Number" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputNombre" class="col-lg-2 control-label">Nombre</label>
                            <div class="col-lg-10">
                                <asp:TextBox ID="TxtNombre" class="form-control" placeholder="Nombre" runat="server" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputApellido" class="col-lg-2 control-label">Apellido</label>
                            <div class="col-lg-10">
                                <asp:TextBox ID="TxtApellido" class="form-control" placeholder="Apellido" runat="server" />
                            </div>
                        </div>
                    </fieldset>
            </div>

            <div class="form-group col-md-6">
                <label for="select" class="col-lg-2 control-label">Departamento</label>
                <div class="col-lg-10">
                    <asp:DropDownList ID="ddldepartamento" runat="server" DataSourceID="departamento" DataTextField="nombre" DataValueField="id_departamento" Width="476px" Height="32px"></asp:DropDownList>
                    <asp:SqlDataSource ID="departamento" runat="server" ConnectionString="<%$ ConnectionStrings:SCA.Properties.Settings.Conexion %>" SelectCommand="SELECT * FROM [Departamento]"></asp:SqlDataSource>
                </div>
            </div>
            <div class="form-group col-md-6">
                <label for="inputFechaAlta" class="col-lg-2 control-label">Fecha alta</label>
                <div class="col-lg-10">
                    <asp:TextBox ID="TxtFechaAlta" Class="form-control" placeholder="Fecha Alta" runat="server" TextMode="Date" />
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
    <asp:GridView ID="tablaempleado" cssClass="table table-striper" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id_empleado" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" HorizontalAlign="Center">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowEditButton="True" HeaderText="Operaciones" />
            <asp:BoundField DataField="codigo_empleado" HeaderText="Codigo Empleado" SortExpression="codigo_empleado" >
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="nombre" HeaderText="Nombre" SortExpression="nombre" />
            <asp:BoundField DataField="apellido" HeaderText="Apellido" SortExpression="apellido" />
            <asp:BoundField DataField="fecha_alta" HeaderText="Fecha de Alta" SortExpression="fecha_alta" DataFormatString="{0:d}" />
            <asp:BoundField DataField="fk_id_departamento" HeaderText="ID Departamento" SortExpression="fk_id_departamento" >
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="fk_id_estado_empleado" HeaderText="ID Estado de Empleado" SortExpression="fk_id_estado_empleado" >
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:SCA.Properties.Settings.Conexion %>" DeleteCommand="DELETE FROM [Empleado] WHERE [id_empleado] = @original_id_empleado AND [codigo_empleado] = @original_codigo_empleado AND [nombre] = @original_nombre AND [apellido] = @original_apellido AND [fecha_alta] = @original_fecha_alta AND (([fecha_baja] = @original_fecha_baja) OR ([fecha_baja] IS NULL AND @original_fecha_baja IS NULL)) AND [fk_id_departamento] = @original_fk_id_departamento AND [fk_id_estado_empleado] = @original_fk_id_estado_empleado" InsertCommand="INSERT INTO [Empleado] ([codigo_empleado], [nombre], [apellido], [fecha_alta], [fecha_baja], [fk_id_departamento], [fk_id_estado_empleado]) VALUES (@codigo_empleado, @nombre, @apellido, @fecha_alta, @fecha_baja, @fk_id_departamento, @fk_id_estado_empleado)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Empleado] WHERE ([fk_id_estado_empleado] = @fk_id_estado_empleado)" UpdateCommand="UPDATE [Empleado] SET [codigo_empleado] = @codigo_empleado, [nombre] = @nombre, [apellido] = @apellido, [fecha_alta] = @fecha_alta, [fecha_baja] = @fecha_baja, [fk_id_departamento] = @fk_id_departamento, [fk_id_estado_empleado] = @fk_id_estado_empleado WHERE [id_empleado] = @original_id_empleado AND [codigo_empleado] = @original_codigo_empleado AND [nombre] = @original_nombre AND [apellido] = @original_apellido AND [fecha_alta] = @original_fecha_alta AND (([fecha_baja] = @original_fecha_baja) OR ([fecha_baja] IS NULL AND @original_fecha_baja IS NULL)) AND [fk_id_departamento] = @original_fk_id_departamento AND [fk_id_estado_empleado] = @original_fk_id_estado_empleado">
            <DeleteParameters>
                <asp:Parameter Name="original_id_empleado" Type="Decimal" />
                <asp:Parameter Name="original_codigo_empleado" Type="Decimal" />
                <asp:Parameter Name="original_nombre" Type="String" />
                <asp:Parameter Name="original_apellido" Type="String" />
                <asp:Parameter DbType="Date" Name="original_fecha_alta" />
                <asp:Parameter DbType="Date" Name="original_fecha_baja" />
                <asp:Parameter Name="original_fk_id_departamento" Type="Decimal" />
                <asp:Parameter Name="original_fk_id_estado_empleado" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="codigo_empleado" Type="Decimal" />
                <asp:Parameter Name="nombre" Type="String" />
                <asp:Parameter Name="apellido" Type="String" />
                <asp:Parameter DbType="Date" Name="fecha_alta" />
                <asp:Parameter DbType="Date" Name="fecha_baja" />
                <asp:Parameter Name="fk_id_departamento" Type="Decimal" />
                <asp:Parameter Name="fk_id_estado_empleado" Type="Decimal" />
            </InsertParameters>
            <SelectParameters>
                <asp:Parameter DefaultValue="1" Name="fk_id_estado_empleado" Type="Decimal" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="codigo_empleado" Type="Decimal" />
                <asp:Parameter Name="nombre" Type="String" />
                <asp:Parameter Name="apellido" Type="String" />
                <asp:Parameter DbType="Date" Name="fecha_alta" />
                <asp:Parameter DbType="Date" Name="fecha_baja" />
                <asp:Parameter Name="fk_id_departamento" Type="Decimal" />
                <asp:Parameter Name="fk_id_estado_empleado" Type="Decimal" />
                <asp:Parameter Name="original_id_empleado" Type="Decimal" />
                <asp:Parameter Name="original_codigo_empleado" Type="Decimal" />
                <asp:Parameter Name="original_nombre" Type="String" />
                <asp:Parameter Name="original_apellido" Type="String" />
                <asp:Parameter DbType="Date" Name="original_fecha_alta" />
                <asp:Parameter DbType="Date" Name="original_fecha_baja" />
                <asp:Parameter Name="original_fk_id_departamento" Type="Decimal" />
                <asp:Parameter Name="original_fk_id_estado_empleado" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    </form>

</asp:Content>
