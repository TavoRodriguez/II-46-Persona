Imports System.Data.SqlClient

Public Class DataBaseHelper
    Public ReadOnly connectionString As String = ConfigurationManager.ConnectionStrings("II-46ConnectionString").ConnectionString


    Public Function Create(Persona As Persona) As String
        Try
            Dim sql As String = "INSERT INTO PERSONA (NOMBRE, APELLIDO, EDAD) VALUES (@Nombre, @Apellido, @Edad)"
            Dim parametros As New List(Of SqlParameter) From {
                New SqlParameter("@Nombre", Persona.Nombre),
                New SqlParameter("@Apellido", Persona.Apellido),
                New SqlParameter("@Edad", Persona.Edad)
            }

            Using connection As New SqlConnection(connectionString)
                Using command As New SqlCommand(sql, connection)
                    command.Parameters.AddRange(parametros.ToArray())
                    connection.Open()
                    command.ExecuteNonQuery()
                End Using

            End Using
        Catch ex As Exception

        End Try

        Return "Persona Creada"
    End Function

    Public Function Delete(id As Integer) As String
        Try
            Dim sql As String = "DELETE FROM PERSONA WHERE ID = @Id"
            Dim parametros As New List(Of SqlParameter) From {
                New SqlParameter("@Id", id)
            }

            Using connection As New SqlConnection(connectionString)
                Using command As New SqlCommand(sql, connection)
                    command.Parameters.AddRange(parametros.ToArray())
                    connection.Open()
                    command.ExecuteNonQuery()
                End Using
            End Using

            Return "Persona eliminada correctamente"
        Catch ex As Exception
            Return "Error al eliminar: " & ex.Message
        End Try
    End Function

    Public Function Update(Persona As Persona) As String
        Try
            Dim sql As String = "UPDATE PERSONA SET NOMBRE = @Nombre, APELLIDO = @Apellido, EDAD = @Edad WHERE ID = @Id"
            Dim parametros As New List(Of SqlParameter) From {
                New SqlParameter("@Nombre", Persona.Nombre),
                New SqlParameter("@Apellido", Persona.Apellido),
                New SqlParameter("@Edad", Persona.Edad),
                New SqlParameter("@Id", Persona.Id)
            }
            Using connection As New SqlConnection(connectionString)
                Using command As New SqlCommand(sql, connection)
                    command.Parameters.AddRange(parametros.ToArray())
                    connection.Open()
                    command.ExecuteNonQuery()
                End Using
            End Using
            Return "Persona actualizada correctamente"
        Catch ex As Exception
            Return "Error al actualizar: " & ex.Message
        End Try
    End Function


End Class
