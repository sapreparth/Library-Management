<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="student1.aspx.cs" Inherits="library.student1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
                       <link rel="stylesheet" href="Css/style1.css">

</head>
<body>
    <form id="form1" runat="server">
        <div class="parallax">
            
                  <center>  Welcome&nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Yellow" Text="Label"></asp:Label>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:Button ID="Button3" runat="server" BackColor="Lime" ForeColor="White" Height="25px" OnClick="Button3_Click" Text="Logout" Width="64px" />
      
       </center>
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      
                        &nbsp;
                    <br />
                    <br />
                    <br />
                    <br />
      
                        Enter ID:&nbsp; <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True"></asp:TextBox>
                   
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Search Book :
                        <asp:TextBox ID="TextBox2" runat="server" placeholder="Book Name"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  Search Book :<asp:TextBox ID="TextBox4" runat="server" Width="122px" placeholder="Author Name"></asp:TextBox>
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:Button ID="Button2" runat="server" BackColor="#CC0066" ForeColor="Black" Text="status" Width="131px" OnClick="Button2_Click" CssClass="auto-style16" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button4" runat="server" BackColor="#CC0066" Text="Search" Width="122px" CssClass="auto-style17" OnClick="Button4_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 
                        <asp:Button ID="Button5" runat="server" Text="Search" Width="133px" BackColor="#FF0066" OnClick="Button5_Click" />
                   
                        <br /><center>
                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource2" AllowPaging="True" Visible="False">
                            <Columns>
                                <asp:BoundField DataField="m_id" HeaderText="m_id" InsertVisible="False" ReadOnly="True" SortExpression="m_id" />
                                <asp:BoundField DataField="m_name" HeaderText="m_name" SortExpression="m_name" />
                                <asp:BoundField DataField="barcode" HeaderText="barcode" SortExpression="barcode" />
                                <asp:BoundField DataField="book_name" HeaderText="book_name" SortExpression="book_name" />
                                <asp:BoundField DataField="book_edition" HeaderText="book_edition" SortExpression="book_edition" />
                                <asp:BoundField DataField="no_issue" HeaderText="no_issue" SortExpression="no_issue" />
                                <asp:BoundField DataField="issue_date" HeaderText="issue_date" SortExpression="issue_date" />
                                <asp:BoundField DataField="return_date" HeaderText="return_date" SortExpression="return_date" />
                            </Columns>
                            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                            <RowStyle BackColor="White" ForeColor="#330099" />
                            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                            <SortedAscendingCellStyle BackColor="#FEFCEB" />
                            <SortedAscendingHeaderStyle BackColor="#AF0101" />
                            <SortedDescendingCellStyle BackColor="#F6F0C0" />
                            <SortedDescendingHeaderStyle BackColor="#7E0000" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT member.m_id, member.m_name, issue.barcode, book.book_name, book.book_edition, issue.no_issue, issue.issue_date, issue.return_date FROM member INNER JOIN issue ON member.m_id = issue.m_id INNER JOIN book ON issue.barcode = book.barcode" FilterExpression="m_id = '{0}'">
                             <FilterParameters>
        <asp:ControlParameter Name="m_id" ControlID="TexTBox1" />
    </FilterParameters>
                        </asp:SqlDataSource>
                </div>
        <div class="parallax2">
                        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="barcode" DataSourceID="SqlDataSource3" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" Visible="False" AllowPaging="True">
                            <Columns>
                                <asp:BoundField DataField="barcode" HeaderText="barcode" InsertVisible="False" ReadOnly="True" SortExpression="barcode" />
                                <asp:BoundField DataField="subject" HeaderText="subject" SortExpression="subject" />
                                <asp:BoundField DataField="book_name" HeaderText="book_name" SortExpression="book_name" />
                                <asp:BoundField DataField="book_edition" HeaderText="book_edition" SortExpression="book_edition" />
                                <asp:BoundField DataField="no_of_copy" HeaderText="no_of_copy" SortExpression="no_of_copy" />
                                <asp:BoundField DataField="book_status" HeaderText="book_status" SortExpression="book_status" />
                                <asp:BoundField DataField="shell" HeaderText="shell" SortExpression="shell" />
                                <asp:BoundField DataField="author_name" HeaderText="author_name" SortExpression="author_name" />
                            </Columns>
                            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                            <RowStyle BackColor="White" ForeColor="#330099" />
                            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                            <SortedAscendingCellStyle BackColor="#FEFCEB" />
                            <SortedAscendingHeaderStyle BackColor="#AF0101" />
                            <SortedDescendingCellStyle BackColor="#F6F0C0" />
                            <SortedDescendingHeaderStyle BackColor="#7E0000" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT book.barcode, book.subject, book.book_name, book.book_edition, book.no_of_copy, book.book_status, book.shell, author.author_name FROM author INNER JOIN book ON author.author_id = book.author_id" FilterExpression="book_name = '{0}'">
                            <FilterParameters>
                                <asp:ControlParameter Name="book_name" ControlID="TextBox2"/>
                            </FilterParameters>
                        </asp:SqlDataSource>
                   
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server">
                            
                        </asp:SqlDataSource>
                    <br />
                    <br />
                    <br />
                        <br />
                 
                        <br />
                    <br />
                   
                        <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="barcode" DataSourceID="SqlDataSource4" Visible="False" AllowPaging="True">
                            <Columns>
                                <asp:BoundField DataField="author_name" HeaderText="author_name" SortExpression="author_name" />
                                <asp:BoundField DataField="barcode" HeaderText="barcode" InsertVisible="False" ReadOnly="True" SortExpression="barcode" />
                                <asp:BoundField DataField="subject" HeaderText="subject" SortExpression="subject" />
                                <asp:BoundField DataField="book_name" HeaderText="book_name" SortExpression="book_name" />
                                <asp:BoundField DataField="book_edition" HeaderText="book_edition" SortExpression="book_edition" />
                                <asp:BoundField DataField="no_of_copy" HeaderText="no_of_copy" SortExpression="no_of_copy" />
                                <asp:BoundField DataField="shell" HeaderText="shell" SortExpression="shell" />
                                <asp:BoundField DataField="book_status" HeaderText="book_status" SortExpression="book_status" />
                            </Columns>
                            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                            <RowStyle BackColor="White" ForeColor="#330099" />
                            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                            <SortedAscendingCellStyle BackColor="#FEFCEB" />
                            <SortedAscendingHeaderStyle BackColor="#AF0101" />
                            <SortedDescendingCellStyle BackColor="#F6F0C0" />
                            <SortedDescendingHeaderStyle BackColor="#7E0000" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT author.author_name, book.barcode, book.subject, book.book_name, book.book_edition, book.no_of_copy, book.shell, book.book_status FROM book INNER JOIN author ON book.author_id = author.author_id" FilterExpression="author_name = '{0}'">
                             <FilterParameters>
                                <asp:ControlParameter Name="author_name" ControlID="TextBox4"/>
                            </FilterParameters>
                        </asp:SqlDataSource>

               
                  
                    
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></center>
                  
        </div>
        <div class="parallax2"></div>
        <center><div style="color: #777;background-color:white;text-align:center;padding:50px 80px;text-align: justify;">
“I have always imagined that Paradise will be a kind of library.”<br />
― Jorge Luis Borges
</div></center>
        
    </form>
</body>
</html>
