<%@ Page Title="About" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.vb" Inherits="Persona.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
        <p>Your app description page.</p>
        <p>Use this area to provide additional information.</p>

        <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
        <asp:TextBox ID="txtApellido" runat="server"></asp:TextBox>
        <asp:TextBox ID="txtEdad" runat="server"></asp:TextBox>
        <asp:Button ID="btnCrear" runat="server" Text="Crear Persona" OnClick="btnCrear_Click" />
        <asp:label ID="lblResultado" runat="server" Text=""></asp:Label>
    </main>
</asp:Content>
