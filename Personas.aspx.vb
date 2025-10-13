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
        gvPersonas.DataBind()
        lblResultado.Text = "Hola " & Persona.Nombre & " " & Persona.Apellido & ", tienes " & Persona.Edad & " años."
    End Sub

    Protected Sub gvPersonas_RowDeleting(sender As Object, e As GridViewDeleteEventArgs)
        Try
            Dim id As Integer = Convert.ToInt32(gvPersonas.DataKeys(e.RowIndex).Value)
            dbHelper.Delete(id)
            e.Cancel = True
            gvPersonas.DataBind()
        Catch ex As Exception
            lblResultado.Text = "Error al eliminar la persona: " & ex.Message
        End Try
    End Sub

    Protected Sub gvPersonas_RowEditing(sender As Object, e As GridViewEditEventArgs)

    End Sub

    Protected Sub gvPersonas_RowCancelingEdit(sender As Object, e As GridViewCancelEditEventArgs)

    End Sub

    Protected Sub gvPersonas_RowUpdating(sender As Object, e As GridViewUpdateEventArgs)

    End Sub
End Class