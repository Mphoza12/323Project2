<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainScreen.aspx.cs" Inherits="Project2.MainScreen" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div aria-multiselectable="False" style="height: 854px; background-image: url('Images/cool3.jpg'); width: 1342px;">
            <div style="z-index: 1; left: 22px; top: 45px; position: absolute; height: 767px; width: 1269px; margin-right: 3px; margin-bottom: 8px;" tabindex="0">
                <asp:Button ID="btnLogout" runat="server" BorderStyle="Inset" OnClick="btnLogout_Click" style="z-index: 1; left: 1137px; top: 5px; position: absolute; margin-top: 5px;" Text="Logout" Width="95px" />
                <asp:Panel ID="Panel1" runat="server" BackColor="Transparent" BorderColor="Black" BorderStyle="Dotted" ScrollBars="Horizontal" style="z-index: 1; left: 8px; top: 108px; position: absolute; width: 1228px; height: 173px;">
                </asp:Panel>
                <asp:Button ID="btnUpload" runat="server" BorderStyle="Inset" OnClick="btnUpload_Click" style="z-index: 1; left: 283px; top: 69px; position: absolute; height: 26px" Text="Upload Image" />
                <asp:FileUpload ID="FileUpload1" runat="server" BorderStyle="Inset" style="z-index: 1; left: 15px; top: 70px; position: absolute" />
                <asp:Label ID="Label1" runat="server" BackColor="Black" BorderColor="White" BorderStyle="Inset" Font-Bold="True" Font-Italic="True" Font-Names="Engravers MT" Font-Overline="False" Font-Size="Larger" ForeColor="White" style="z-index: 1; left: 126px; top: 6px; position: absolute; width: 167px; height: 34px" Text="Photos"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
