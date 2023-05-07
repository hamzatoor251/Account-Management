<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gridview.aspx.cs" Inherits="Gridview_assignment.gridview" %>

<!DOCTYPE html>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <asp:gridview id="empgrid" runat="server" backcolor="White" bordercolor="#E7E7FF"

            borderstyle="None" borderwidth="1px" cellpadding="3" font-names="Calibri" font-size="Larger"

            gridlines="Horizontal">

            <AlternatingRowStyle BackColor="#F7F7F7" />

            <FooterStyle BackColor="#B5C7EE" ForeColor="#4A3C88" />

            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />

            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />

            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />

            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />

            <SortedAscendingCellStyle BackColor="#F4F4FD" />

            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />

            <SortedDescendingCellStyle BackColor="#D8D8F0" />

            <SortedDescendingHeaderStyle BackColor="#3E3277" />

        </asp:gridview>         
        </div>
    </form>
</body>
</html>
