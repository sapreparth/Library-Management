<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="issuebook.aspx.cs" Inherits="library.issuebook" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<link rel="stylesheet" href="Css/style1.css">
</head>
<body>
    <form id="form1" runat="server">
        <div class="parallax2">
       <center>  <asp:Label ID="Label3" runat="server" Text="Label" ForeColor="Yellow"></asp:Label></center>
        <br />
        <br />
        <ul>
            <li><a href="addbook.aspx">Add Book</a></li>
            <li><a href="issuebook.aspx">Issue Book</a></li>
            <li><a href="renewbook.aspx">Renew Book</a></li>
            <li><a href="returnbook.aspx">Return Book</a></li>
            <li><a href="removebook.aspx">Remove Book</a></li>
            <li><a href="createaccount.aspx">Add Student</a></li>
            <li><a href="blockaccount.aspx">Block Account</a></li>
            <li><a href="unblockaccount.aspx">Unblock Account</a></li>
            <li><a href="removeaccount.aspx">Remove Student</a></li>
             <li><a href="logout.aspx">Logout</a></li>

        </ul>
            </div >
        <div class="parallax">
       <center> <table class="auto-style1">
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <asp:Label ID="Label2" runat="server" ForeColor="Lime"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3" style="color: #FFFF00; font-weight: bold;">barcode:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="barcode is required" foreColor="Red" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3" style="color: #FFFF00; font-weight: bold;">m_id:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="member id is required" foreColor="Red" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox5" runat="server" Visible="False"></asp:TextBox>
                </td>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Issue" Width="89px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox4" runat="server" Visible="False"></asp:TextBox>
                    <asp:TextBox ID="TextBox3" runat="server" Visible="False"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table></div></center>
          <div class="parallax2"></div>
        <center><div style="color: #777;background-color:white;text-align:center;padding:50px 80px;text-align: justify;">
“I have always imagined that Paradise will be a kind of library.”<br />
― Jorge Luis Borges
</div></center>
        
    </form>
</body>
</html>
