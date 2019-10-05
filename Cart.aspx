<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="medicine_store_management_system.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cart</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="order_id" DataSourceID="SqlDataSourceCart">
            <Columns>
                <asp:BoundField DataField="order_id" HeaderText="order Id" InsertVisible="False" ReadOnly="True" SortExpression="order_id" />
                <asp:BoundField DataField="count" HeaderText="Count" SortExpression="count" />
            </Columns>
        </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSourceCart" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringSeller %>" SelectCommand="SELECT [order_id], [count] FROM [Order]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
