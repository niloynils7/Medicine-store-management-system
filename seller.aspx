<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="seller.aspx.cs" Inherits="medicine_store_management_system.seller" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Selling Page</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="style%20sheets/stylesheet1.css" rel="stylesheet" />
</head>
<body>

    <form id="formGrid" runat="server" class="navbar-form navbar-left" role="search">
        <!-- nevigation menu -->
        <section>

            <nav class="navbar navbar-default">
                <div class="container-fluid" style="background-color: azure">

                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

                        <!--<form id="formSearch" class="navbar-form navbar-right" role="search">-->
                        <div class="form-group">
                            <!--<input id="textSearch" type="text" class="form-control" placeholder="Search" />-->
                            <asp:TextBox ID="TextSearch" runat="server" class="form-control" placeholder="Search"></asp:TextBox>
                        </div>
                        <!--<button id="buttonSearch" type="submit" class="btn btn-default">Submit</button>-->
                        <asp:Button ID="ButtonSearch" runat="server" Text="Search" type="submit" class="btn btn-default" OnClick="ButtonSearch_Click1" />
                        <!--</form>-->
                        <ul class="nav navbar-nav navbar-right ">
                            <li><a href="#">Cart</a></li>
                            <li><a href="#">Stock</a></li>
                            <li><a href="#">Soon to be expired</a></li>
                        </ul>
                    </div>
                    <!-- /.navbar-collapse -->
                    
                </div>
                <!-- /.container-fluid -->
            </nav>
        </section>
        
        <div>
            <asp:GridView ID="GridViewSearch" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Height="90px" Width="885px" HorizontalAlign="Center">
                <Columns>
                    <asp:BoundField DataField="product_id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="product_id" />
                    <asp:BoundField DataField="product_name" HeaderText="Medicine Name" SortExpression="product_name" />
                    <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" />
                    <asp:BoundField DataField="group" HeaderText="Group" SortExpression="group" />
                    <asp:BoundField DataField="product_count" HeaderText="Availability" SortExpression="product_count" />
                    <asp:BoundField DataField="location" HeaderText="Location" SortExpression="location" />
                    <asp:BoundField DataField="Mfg_Date" HeaderText="Manufactur Date" SortExpression="Mfg_Date" />
                    <asp:BoundField DataField="Expire_Date" HeaderText="Expire Date" SortExpression="Expire_Date" />
                    <asp:ButtonField Text="ADD"/>
                </Columns>

                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>
        </div>
    </form>

</body>
</html>
