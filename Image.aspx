<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Image.aspx.cs" Inherits="Project2.Image" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div style="height: 111px">
                <asp:Button ID="Gallery" runat="server" OnClick="Gallery_Click" style="z-index: 1; left: 10px; top: 15px; position: absolute" Text="Back to Gallery" />
                <br />
                <br />
                <asp:Image ID="Image1" runat="server" />
                <asp:Button ID="BtnDelete" runat="server" OnClick="BtnDelete_Click" style="z-index: 1; left: 303px; top: 20px; position: absolute" Text="Delete" />
                <asp:Button ID="BtnDownload" runat="server" OnClick="BtnDownload_Click" style="z-index: 1; left: 189px; top: 18px; position: absolute" Text="Download" />
            </div>
        </div>
    </form>
</body>
</html>
