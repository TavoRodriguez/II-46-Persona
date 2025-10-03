Public Class Personas
    Inherits System.Web.UI.Page
    Public Persona As Persona
    Protected dbHelper As New DataBaseHelper()
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnCrear_Click(sender As Object, e As EventArgs)
        Persona = New Persona()
        Persona.Nombre = txtNombre.Text
        Persona.Apellido = txtApellido.Text
        Persona.Edad = Convert.ToInt32(txtEdad.Text)
        dbHelper.Create(Persona)
        lblResultado.Text = "Hola " & Persona.Nombre & " " & Persona.Apellido & ", tienes " & Persona.Edad & " años."
    End Sub
End Class