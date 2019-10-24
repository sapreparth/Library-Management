<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="renewbook.aspx.cs" Inherits="library.renewbook" %>

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
    <center><table class="auto-style1">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:Label ID="Label2" runat="server" ForeColor="#00CC00"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2" style="color: #FFFF00; font-weight: bold;">barcode:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td class="auto-style3" style="color: #FFFF00; font-weight: bold;">m_id:</td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Renew" Width="81px" />
            </td>
        </tr>
        
    </table></center></div>
         <center><div style="color: #777;background-color:white;text-align:center;padding:50px 80px;text-align: justify;">
  “A room without books is like a body without a soul.”<br />
― Marcus Tullius Cicero
</div></center>   
    <div class="parallax">


    </div>
    </form>
</body>
</html>
