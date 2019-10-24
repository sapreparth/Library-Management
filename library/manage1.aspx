<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="manage1.aspx.cs" Inherits="library.manage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   <style>
body {margin: 0;}

ul.topnav {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333;
}

ul.topnav li {float: left;}

ul.topnav li a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

ul.topnav li a:hover:not(.active) {background-color: #111;}

ul.topnav li a.active {background-color: #4CAF50;}

ul.topnav li.right {float: right;}

@media screen and (max-width: 600px){
    ul.topnav li.right, 
    ul.topnav li {float: none;}
}
       .auto-style1 {
           height: 30px;
       }
       .auto-style2 {
           height: 23px;
       }
   </style>
</head>
<body background="Css/Back3.jpg" >
    <form id="form1" runat="server">
        <div>
   <center>
                        Welcome
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="False" ForeColor="Yellow" Text="Label"></asp:Label>
                        <br />
                    <asp:Label ID="Label2" runat="server" Font-Bold="False" ForeColor="#00CC00"></asp:Label>
                </center>
                    
                        
                    
                  
                      
                        <br />
                    
                        
                    
                  
                      <ul class="topnav">
                          <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </li>
                          <li> <asp:Button ID="Button1" runat="server" Text="Add Librarian" BackColor="#D6D6D6" Width="147px" OnClick="Button1_Click" BorderColor="#FF3300" Height="31px" /></li> 
                           
                          <li><asp:Button ID="Button2" runat="server" BackColor="#D6D6D6" Text="Remove Librarian" Width="147px" OnClick="Button2_Click" BorderColor="#FF3300" Height="31px" /></li> 
                         
                          <li>  <asp:Button ID="Button3" runat="server" BackColor="#D6D6D6" Text="Update Librarian" Width="147px" OnClick="Button3_Click" Height="31px" BorderColor="#FF3300" /></li> 
                    
            <li><asp:Button ID="Button4" runat="server" BackColor="#D6D6D6"  OnClick="Button4_Click" Text="Logout" Width="147px" BorderColor="#FF3300" Height="31px" /></li> </ul>
            <br /><br /><br />


         <center>   <asp:Panel ID="Panel1" runat="server">

                 <table class="auto-style1">
            <tr>
                <td class="auto-style2" style="color: #FFFF00; font-weight: bold;">l_name:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" ForeColor="#0000CC"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is required" foreColor="Red" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2" style="color: #FFFF00; font-weight: bold;">l_pwd:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" ForeColor="#0000CC"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password is required" foreColor="Red" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1" style="color: #FFFF00; font-weight: bold;">l_contact_no:</td>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Contact No. is required" foreColor="Red" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2" style="color: #FFFF00; font-weight: bold;">l_address:</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Address is required" foreColor="Red" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2" style="color: #FFFF00; font-weight: bold;">l_email:</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Email is required" foreColor="Red" ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Email is Invalid" forecolor="Red" ControlToValidate="TextBox5" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
             <tr>
                <td class="auto-style2" style="color: #FFFF00; font-weight: bold;">l_role:</td>
                <td>
                    <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage="role is required" foreColor="Red" ControlToValidate="TextBox14"></asp:RequiredFieldValidator>


                 </td>
            </tr>
             <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="Button5" runat="server" Text="ADD" Width="72px" OnClick="Button5_Click" BorderColor="#FF3300" />
                </td>
            </tr>
        </table>


            </asp:Panel>

            <asp:Panel ID="Panel2" runat="server">
                <br />
                     <table>
        
            <tr>
                <td class="auto-style2" style="color: #FFFF00; font-weight: bold">l_id:</td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Id is required" foreColor="Red" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style2" style="color: #FFFF00; font-weight: bold">l_name:</td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Name is required" foreColor="Red" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Remove" style="height: 26px" BorderColor="#FF3300" />
                </td>
            </tr>
        </table>



            </asp:Panel>

            <asp:Panel ID="Panel3" runat="server">
                <br />

                        <table>
           
      
            <tr>
                <td class="auto-style1" style="color: #FFFF00; font-weight: bold">l_id:</td>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="ID is required" foreColor="Red" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2" style="color: #FFFF00; font-weight: bold">l_name:</td>
                <td>
                    <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Name is required" foreColor="Red" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2" style="color: #FFFF00; font-weight: bold">l_pwd:</td>
                <td>
                    <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Password is required" foreColor="Red" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style2" style="color: #FFFF00; font-weight: bold">l_contact_no:</td>
                <td>
                    <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="Contact No. is required" foreColor="Red" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2" style="color: #FFFF00; font-weight: bold">l_address:</td>
                <td>
                    <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="Address is required" foreColor="Red" ControlToValidate="TextBox5"></asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2" style="color: #FFFF00; font-weight: bold">l_email:</td>
                <td>
                    <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="Email is required" foreColor="Red" ControlToValidate="TextBox6"></asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="Button7" runat="server"  Text="Update" OnClick="Button7_Click" />
                </td>
            </tr>
           
        </table>

            </asp:Panel></center>

        </div>
    </form>
</body>
</html>
