<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="medicine_store_management_system.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="style%20sheets/stylesheet1.css" rel="stylesheet" />

</head>
<body>
    <form id="form1">
        <div class="container">
            <section>
                <div>
                    <div class="row">
                        <div class="col-md-12" style="box-shadow: 0px 2px 5px #ccc; background-color:whitesmoke; padding: 20px">
                            <h1 class="text-center">Medecine Store Management System</h1>
                        </div>
                    </div>
                </div>
            </section>
            </div>
        </form>
            <section>
                <div class="container">
                    <div class="row">
                        <div class=" col-md-4 col-md-offset-4 marginforlogin">
                            <form class="fcontainer" runat="server"> 
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Email address</label>
                                    <!--<input type="email" class="form-control" id="loginemail" aria-describedby="emailHelp" placeholder="Enter email" />-->
                                    <asp:TextBox type="email" class="form-control" ID="loginemail" aria-describedby="emailHelp" placeholder="Enter email" runat="server"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="loginemail" ErrorMessage="Invalid Email Address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Password</label>
                                    <!--<input type="password" class="form-control" id="loginpassword" placeholder="Password" />-->
                                    <asp:TextBox type="password" class="form-control" ID="loginpassword" placeholder="Password" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="loginpassword" ErrorMessage="Please input Password" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                                <div class="form-check">
                                    <input type="checkbox" class="form-check-input" id="exampleCheck1" />
                                    <label class="form-check-label" for="exampleCheck1">Remember Me</label>
                                </div>
                                <!--<a class="btn btn-primary" href="seller.aspx" role="button" id="loginbutton">Login</a>-->
                                <asp:Button ID="loginbutton" runat="server" Text="Login" class="btn btn-primary" OnClick="loginbutton_Click" />
                                
                                </form>
                        </div>
                    </div>
                </div>
            </section>
</body>
</html>
