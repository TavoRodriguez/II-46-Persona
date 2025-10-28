﻿<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Personas.aspx.vb" Inherits="Persona.Personas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:HiddenField ID="editando" runat="server" />    

    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <h2 class="mb-4">Gestión de Personas</h2>
                <div class="mb-3">
                    <asp:TextBox ID="txtNombre" CssClass="form-control" placeholder="Nombre" runat="server"></asp:TextBox>
                </div>
                   <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ValidationGroup="vgPersona" CssClass ="alert alert-warning"
                    Display ="Dynamic"
                    ErrorMessage="Se requiere el nombre"
                    ControlToValidate="txtNombre"></asp:RequiredFieldValidator>
                <div class="mb-3">
                    <asp:TextBox ID="txtApellido" CssClass="form-control" placeholder="Apellido" runat="server"></asp:TextBox>
                </div>
                   <asp:RequiredFieldValidator ID="rfvApellido" runat="server" ValidationGroup="vgPersona" CssClass ="alert alert-warning"
                    Display ="Dynamic"
                    ErrorMessage="Se requiere el Apellido"
                    ControlToValidate="txtNombre"></asp:RequiredFieldValidator>
                <div class="mb-3">
                    <asp:TextBox ID="txtEdad" CssClass="form-control" placeholder="Edad" runat="server" TextMode="Number"></asp:TextBox>
                </div>
                     <asp:RequiredFieldValidator ID="rfvEdad" runat="server" ValidationGroup="vgPersona" CssClass ="alert alert-warning"
                      Display ="Dynamic"
                      ErrorMessage="Se requiere la Edad"
                      ControlToValidate="txtEdad"></asp:RequiredFieldValidator>
                <div class="mb-3">
                    <asp:Button ID="btnCrear" CssClass="btn btn-primary me-2" runat="server" Text="Crear Persona" OnClick="btnCrear_Click"/>
                    <asp:Button ID="btnActualizar" CssClass="btn btn-primary" runat="server" Text="Actualizar Persona" OnClick="btnActualizar_Click" />
                </div>
                <asp:Label ID="lblResultado" CssClass="text-success d-block mb-3" runat="server" Text=""></asp:Label>

                <asp:ValidationSummary ID="vsPersona" runat="server" ShowSummary ="true" CssClass ="alert alert-warning"
                    HeaderText ="Corrigue los siguientes errores"/>
            </div>
        </div>

        <div class="row mt-5">
            <div class="col-12">
                <asp:GridView ID="gvPersonas" CssClass="table table-striped table-bordered table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" OnRowDeleting="gvPersonas_RowDeleting" OnRowEditing="gvPersonas_RowEditing" OnRowCancelingEdit="gvPersonas_RowCancelingEdit" OnRowUpdating="gvPersonas_RowUpdating" OnSelectedIndexChanged="gvPersonas_SelectedIndexChanged">
                    <HeaderStyle CssClass="table-dark" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="true" ControlStyle-CssClass="btn btn-success btn-sm" />
                        <asp:CommandField ShowEditButton="true" ControlStyle-CssClass="btn btn-primary btn-sm" />
                        <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                        <asp:BoundField DataField="NOMBRE" HeaderText="NOMBRE" SortExpression="NOMBRE" />
                        <asp:BoundField DataField="APELLIDO" HeaderText="APELLIDO" SortExpression="APELLIDO" />
                        <asp:BoundField DataField="EDAD" HeaderText="EDAD" SortExpression="EDAD" />
                        <asp:CommandField ShowDeleteButton="True" ControlStyle-CssClass="btn btn-danger btn-sm" />
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:II-46ConnectionString %>" ProviderName="<%$ ConnectionStrings:II-46ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [PERSONA]"></asp:SqlDataSource>
</asp:Content>
