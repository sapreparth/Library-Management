<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="removebook.aspx.cs" Inherits="library.removebook" %>

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
     <center>   <table class="auto-style1">
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style6">
                    <asp:Label ID="Label2" runat="server" ForeColor="Lime"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style3" style="color: #FFFF00; font-weight: bold;">barcode:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="barcode is required" foreColor="Red" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3" style="color: #FFFF00; font-weight: bold;">book_name:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="book name is required" foreColor="Red" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2" style="color: #FFFF00; font-weight: bold;">book_edition:</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="book edition is required" foreColor="Red" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Remove" Width="91px" />
                </td>
            </tr>
            
        </table></center></div>
           <center><div style="color: #777;background-color:white;text-align:center;padding:50px 80px;text-align: justify;">
  “A room without books is like a body without a soul.”<br />
― Marcus Tullius Cicero
</div></center>   
    <div class="parallax2">


    </div>
    </form>
</body>
</html>
