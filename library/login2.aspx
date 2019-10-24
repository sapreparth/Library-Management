<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login2.aspx.cs" Inherits="library.login2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    </head>
<body background="Css/Back2.jpg">
    <form id="form1" runat="server">
        <center>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <asp:Login ID="Login1" runat="server" OnAuthenticate="Login1_Authenticate" BackColor="#F7F6F3" BorderColor="#E6E2D8" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333" Height="248px" Width="319px">
                        <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                        <LoginButtonStyle BackColor="#FFFBFF" BorderColor="Red" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" Height="32px" Width="325px" />
                        <TextBoxStyle Font-Size="0.8em" BackColor="White" Height="15px" />
                        <TitleTextStyle BackColor="Red" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
                        <ValidatorTextStyle BorderColor="Red" />
                    </asp:Login></center>
              
       
    </form>
</body>
</html>
