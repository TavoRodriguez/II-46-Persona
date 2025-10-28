Namespace Utils
    Public Module SwalUtils
        Public Sub ShowSwalMessage(page As System.Web.UI.Page, tittle As String, message As String, icon As String)
            ScriptManager.RegisterStartupScript(page, page.GetType(), Guid.NewGuid().ToString(), ShowSwalMessage(tittle, message, icon), True)
        End Sub

        Public Function ShowSwalMessage(tittle As String, message As String, icon As String) As String
            Return $"Swal.fire('{tittle}', '{message}', '{icon}');"
        End Function

        Public Sub ShowSwalError(page As System.Web.UI.Page, tittle As String, message As String)
            ShowSwalMessage(page, "Error", message, "error")
        End Sub

        Public Sub ShowSwal(page As System.Web.UI.Page, tittle As String, message As String, Optional icon As String = "success")
            ShowSwalMessage(page, ErrorToString, message, "error")
        End Sub
    End Module
End Namespace
