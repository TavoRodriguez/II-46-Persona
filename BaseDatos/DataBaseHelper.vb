﻿Imports System.Data.SqlClient

Public Class DataBaseHelper
    Private ReadOnly connectionString As String = ConfigurationManager.ConnectionStrings("II-46ConnectionString").ConnectionString

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

End Class
