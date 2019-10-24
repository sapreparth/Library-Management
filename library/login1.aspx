<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login1.aspx.cs" Inherits="library.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="shortcut icon" href="~/favicon.ico" type="imge/x-icon" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 101%;
            height: 483px;
        }

        .auto-style2 {
            height: 24px;
        }
        .auto-style3 {
            height: 27px;
        }
        .auto-style7 {
            height: 27px;
            width: 512px;
        }
        .auto-style8 {
            width: 512px;
        }
        .auto-style9 {
            height: 24px;
            width: 512px;
        }
        .auto-style10 {
            text-align: right;
        }
        .auto-style11 {
            width: 512px;
            height: 23px;
        }
        .auto-style12 {
            height: 23px;
        }
    </style>
</head>
<body background="Css/Background.jpg">
    <form id="form1" runat="server">
        <div>
        </div>
    
      <center>     
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <asp:Login ID="Login1" runat="server" OnAuthenticate="Login1_Authenticate" Height="246px" Width="319px" BackColor="#00CCFF" BorderColor="#FFFF66" BorderPadding="4" BorderStyle="Double" BorderWidth="2px" Font-Names="Verdana" Font-Size="Small" ForeColor="#333333" >
                <CheckBoxStyle BorderColor="Yellow" ForeColor="Black" Height="22px" HorizontalAlign="Center" />
                <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                <FailureTextStyle BorderColor="Red" />
                <LoginButtonStyle BackColor="#66FF99" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#000099" Height="32px" Width="325px" />
                <TextBoxStyle Font-Size="0.8em" BackColor="#FFFF99" BorderColor="#0066FF" Height="22px" />
                <TitleTextStyle BackColor="#0066CC" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
                <ValidatorTextStyle BackColor="White" Height="10px" Width="10px" />
            </asp:Login></center> 
            
                <asp:TextBox ID="TextBox7" runat="server" Visible="False"></asp:TextBox>
                <asp:TextBox ID="TextBox8" runat="server" Visible="False"></asp:TextBox>
                <asp:TextBox ID="TextBox9" runat="server" Visible="False"></asp:TextBox>
                <asp:TextBox ID="TextBox10" runat="server" Visible="False"></asp:TextBox>
         
                <asp:TextBox ID="TextBox4" runat="server" Visible="False"></asp:TextBox>
                <asp:TextBox ID="TextBox5" runat="server" Visible="False"></asp:TextBox>
                <asp:TextBox ID="TextBox6" runat="server" Visible="False"></asp:TextBox>
          
                <asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox>
                <asp:TextBox ID="TextBox2" runat="server" Visible="False"></asp:TextBox>
                <asp:TextBox ID="TextBox3" runat="server" Visible="False"></asp:TextBox>
          
    </form>
    </body>
</html>
