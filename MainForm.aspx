<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainForm.aspx.cs" Inherits="Project2.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 547px">
    <form id="form1" runat="server">
        <div style="background-image: url('Images/background1.jpg'); height: 549px;">
        </div>
        <div style="z-index: 1; left: 20px; top: 62px; position: absolute; height: 258px; width: 509px; margin-top: 0px">
            <asp:Label ID="Label1" runat="server" ForeColor="White" style="z-index: 1; left: 20px; top: 44px; position: absolute; width: 95px" Text="User Name: "></asp:Label>
            <asp:Label ID="Label2" runat="server" ForeColor="White" style="z-index: 1; left: 23px; top: 100px; position: absolute; width: 80px" Text="Password"></asp:Label>
            <asp:TextBox ID="txtUserName" runat="server" BackColor="Transparent" BorderColor="White" BorderStyle="Dashed" style="z-index: 1; left: 126px; top: 41px; position: absolute; width: 254px"></asp:TextBox>
            <asp:TextBox ID="txtPassWord" runat="server" BackColor="Transparent" BorderColor="White" BorderStyle="Dashed" style="z-index: 1; left: 129px; top: 98px; position: absolute; width: 253px"></asp:TextBox>
            <asp:TextBox ID="txtErrorMessage" runat="server" BackColor="Transparent" BorderColor="#999999" style="z-index: 1; left: 33px; top: 145px; position: absolute; width: 404px; height: 15px; margin-top: 0px; margin-bottom: 1px"></asp:TextBox>
            <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" style="z-index: 1; left: 52px; top: 181px; position: absolute; width: 63px; height: 27px" Text="Login" />
            <asp:Button ID="btnSignUp" runat="server" OnClick="btnSignUp_Click" style="z-index: 1; left: 209px; top: 181px; position: absolute" Text="Sign Up" />
        </div>
    </form>
</body>
</html>
