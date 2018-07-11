<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebAppLogin.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <script type="text/javascript" src="Scripts/jquery-1.10.2.js"></script>
    <%--<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js" type="text/javascript"></script>--%>
    <script type="text/javascript" src="Scripts/login.js"></script>
    

    <script type="text/javascript">
        function ShowCurrentTime() {
            $.ajax({
                type: "POST",
                url: "Login.aspx/GetCurrentTime",
                data: '{name: "' + $("#<%=txtUserName.ClientID%>")[0].value + '" }',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: OnSuccess,
                failure: function (response) {
                    alert(response.d);
                }
            });
        }

        function OnSuccess(response) {
            alert(response.d);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Your Name :
            <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
            <input type="text" id="second"/>
            <input id="btnGetTime" type="button" value="Show Current Time"
                onclick="ShowCurrentTime()" />
        </div>
    </form>
</body>
</html>
