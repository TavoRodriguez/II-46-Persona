<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Personas.aspx.vb" Inherits="Persona.Personas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:HiddenField ID="editando" runat="server" />    

    <asp:TextBox ID="txtNombre" placeholder ="Nombre" runat="server"></asp:TextBox>
    <asp:TextBox ID="txtApellido"  placeholder ="Apellido" runat="server"></asp:TextBox>
    <asp:TextBox ID="txtEdad"  placeholder ="Edad" runat="server"></asp:TextBox>
    <asp:Button ID="btnCrear" CssClass ="btn btn-primary" runat="server" Text="Crear Persona" OnClick="btnCrear_Click" />
    <asp:Button ID="btnActualizar" CssClass ="btn btn-primary" runat="server" Text="Actualizar Persona" OnClick ="btnActualizar_Click" />
    <asp:Label ID="lblResultado" runat="server" Text=""></asp:Label>
    <asp:GridView ID="gvPersonas" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" OnRowDeleting ="gvPersonas_RowDeleting" OnRowEditing ="gvPersonas_RowEditing" OnRowCancelingEdit ="gvPersonas_RowCancelingEdit" OnRowUpdating ="gvPersonas_RowUpdating" OnSelectedIndexChanged ="gvPersonas_SelectedIndexChanged">
        <Columns>
            <asp:CommandField ShowSelectButton="true" ControlStyle-CssClass ="btn btn-success"/>
            <asp:CommandField ShowEditButton="true" ControlStyle-CssClass ="btn btn-primary"/>
            <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="NOMBRE" HeaderText="NOMBRE" SortExpression="NOMBRE" />
            <asp:BoundField DataField="APELLIDO" HeaderText="APELLIDO" SortExpression="APELLIDO" />
            <asp:BoundField DataField="EDAD" HeaderText="EDAD" SortExpression="EDAD" />
            <asp:CommandField ShowDeleteButton="True" ControlStyle-CssClass ="btn btn-danger"/>
        </Columns>
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:II-46ConnectionString %>" ProviderName="<%$ ConnectionStrings:II-46ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [PERSONA]"></asp:SqlDataSource>
</asp:Content>
