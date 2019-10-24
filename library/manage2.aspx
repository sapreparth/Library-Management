<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="manage2.aspx.cs" Inherits="library.manage2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="Css/style1.css">

    </head>
<body>
    <form id="form1" runat="server">
      <div class="parallax2">
       <center>  <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="Yellow"></asp:Label></center>
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
            </div>
        <div class="parallax"></div>
        <br />
        <br />
       

<center><div style="color: #777;background-color:white;text-align:center;padding:50px 80px;text-align: justify;">
  “So many books, so little time.”<br />
   ― Frank Zappa
</div></center>
    </form>
   <div class="parallax">


   </div>
    <center><div style="color: #777;background-color:white;text-align:center;padding:50px 80px;text-align: justify;">
  “A room without books is like a body without a soul.”<br />
― Marcus Tullius Cicero
</div></center>   
    <div class="parallax2">


    </div>
    </div>
    <center><div style="color: #777;background-color:white;text-align:center;padding:50px 80px;text-align: justify;">
“I have always imagined that Paradise will be a kind of library.”<br />
― Jorge Luis Borges
</div></center>
</body>
</html>
