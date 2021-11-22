<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUpForm.aspx.cs" Inherits="Project2.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="background-image: url('Images/cool.jpg'); height: 759px;">
            &nbsp;
            &nbsp;
            &nbsp;&nbsp;&nbsp;
            &nbsp;<div style="height: 624px; z-index: 1; left: 16px; top: 96px; position: absolute; width: 894px; margin-bottom: 1px">
                <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 2px; z-index: 1; left: 149px; top: 161px; position: absolute; width: 280px;"></asp:TextBox>
                <asp:TextBox ID="txtDOB" runat="server" style="z-index: 1; left: 151px; top: 203px; position: absolute; width: 275px"></asp:TextBox>
                <asp:TextBox ID="txtCellNo" runat="server" style="margin-left: 8px; z-index: 1; left: 148px; top: 299px; position: absolute; width: 281px; margin-bottom: 2px;"></asp:TextBox>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="White" style="z-index: 1; left: 15px; top: 33px; position: absolute" Text="Name:"></asp:Label>
            <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="White" style="z-index: 1; left: 16px; top: 76px; position: absolute; height: 20px" Text="Surname:"></asp:Label>
            <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 11px; top: 123px; position: absolute; right: 502px; height: 26px; margin-right: 2px;" Text="Gender: " Font-Bold="True" ForeColor="White"></asp:Label>
            <asp:RadioButton ID="RadioMale1" runat="server" GroupName="GenderGroup" style="z-index: 1; left: 120px; top: 122px; position: absolute; right: 397px;" Text="Male" Font-Bold="True" ForeColor="White" />
            <asp:RadioButton ID="RadioFemale2" runat="server" GroupName="GenderGroup" style="z-index: 1; left: 237px; top: 121px; position: absolute; height: 28px;" Text="Female" Font-Bold="True" ForeColor="White" />
                <asp:RadioButton ID="RadioButton2" runat="server" GroupName="GenderGroup" Text="Other" Font-Bold="True" ForeColor="White" OnCheckedChanged="RadioButton2_CheckedChanged" style="z-index: 1; left: 490px; top: 122px; position: absolute; height: 19px" />
                <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="White" style="z-index: 1; left: 7px; top: 165px; position: absolute" Text="If other specify:"></asp:Label>
                <asp:Label ID="Label5" runat="server" Font-Bold="True" ForeColor="White" style="z-index: 1; left: 4px; top: 299px; position: absolute" Text="Cellphone Number: "></asp:Label>
                <asp:Label ID="Label7" runat="server" Font-Bold="True" ForeColor="White" style="z-index: 1; left: 9px; top: 394px; position: absolute; margin-top: 2px" Text="Password:"></asp:Label>
                <asp:Label ID="Label8" runat="server" Font-Bold="True" ForeColor="White" style="z-index: 1; left: 5px; top: 345px; position: absolute; margin-top: 0px" Text="User name:"></asp:Label>
                <asp:Label ID="Label6" runat="server" Font-Bold="True" ForeColor="White" style="z-index: 1; left: 9px; top: 256px; position: absolute" Text="Email Address:"></asp:Label>
            <asp:RadioButton ID="RadioButton1" runat="server" GroupName="GenderGroup" style="z-index: 1; left: 344px; top: 121px; position: absolute" Text="Prefer not to say" Font-Bold="True" ForeColor="White" />
                <asp:TextBox ID="txtSurname" runat="server" style="z-index: 1; left: 145px; top: 76px; position: absolute; width: 263px; margin-top: 0px"></asp:TextBox>
                <asp:TextBox ID="txtName" runat="server" Height="16px" style="margin-left: 11px; z-index: 1; left: 133px; top: 30px; position: absolute; width: 265px;"></asp:TextBox>
                <asp:TextBox ID="txtEmail" runat="server" style="margin-left: 14px; z-index: 1; left: 136px; top: 245px; position: absolute; height: 22px; width: 284px; margin-top: 3px; margin-bottom: 0px;"></asp:TextBox>
                <asp:Label ID="Label9" runat="server" Font-Bold="True" ForeColor="White" style="z-index: 1; left: 4px; top: 449px; position: absolute" Text="Confirm Password:"></asp:Label>
                <asp:TextBox ID="txtUserName" runat="server" style="margin-left: 20px; z-index: 1; left: 134px; top: 346px; position: absolute; width: 280px; margin-bottom: 0px;"></asp:TextBox>
                <asp:TextBox ID="txtPassword" runat="server" style="margin-left: 8px; z-index: 1; left: 143px; top: 392px; position: absolute; width: 284px;"></asp:TextBox>
                <asp:TextBox ID="txtConfirm" runat="server" style="margin-left: 6px; z-index: 1; left: 149px; top: 447px; position: absolute; width: 272px;"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid Email" Font-Bold="True" ForeColor="White" style="z-index: 1; left: 455px; top: 254px; position: absolute" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" style="z-index: 1; left: 80px; top: 502px; position: absolute; width: 98px" Text="Submit" />
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Underline="True" style="z-index: 1; left: 11px; top: 570px; position: absolute; width: 161px; height: 17px;" NavigateUrl="~/MainForm.aspx">Return to home page</asp:HyperLink>
                <asp:Label ID="Label11" runat="server" Font-Bold="True" ForeColor="White" style="z-index: 1; left: 9px; top: 211px; position: absolute; height: 23px; width: 97px" Text="Date of birth:"></asp:Label>
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/calender.jpg" OnClick="ImageButton1_Click" style="z-index: 1; left: 448px; top: 202px; position: absolute; height: 25px; width: 34px" />
                <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" Font-Size="10pt" ForeColor="Black" Height="220px" NextPrevFormat="FullMonth" OnSelectionChanged="Calendar1_SelectionChanged" style="z-index: 1; left: 601px; top: 181px; position: absolute; height: 188px; width: 259px" TitleFormat="Month" Width="400px">
                    <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" ForeColor="#333333" Height="10pt" />
                    <DayStyle Width="14%" />
                    <NextPrevStyle Font-Size="8pt" ForeColor="White" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
                    <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" ForeColor="#333333" Width="1%" />
                    <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" ForeColor="White" Height="14pt" />
                    <TodayDayStyle BackColor="#CCCC99" />
                </asp:Calendar>
            </div>
        </div>
        <div style="z-index: 1; left: 28px; top: 23px; position: absolute; height: 68px; width: 586px; margin-bottom: 25px">
            <asp:Label ID="Label10" runat="server" BackColor="Black" BorderColor="#FF9900" BorderStyle="Inset" Font-Bold="True" Font-Italic="True" Font-Names="Engravers MT" Font-Size="Larger" ForeColor="White" style="z-index: 1; left: 111px; top: 15px; position: absolute; height: 31px; width: 162px; right: 305px; margin-bottom: 0px" Text="Sign Up"></asp:Label>
        </div>
    </form>
</body>
</html>
