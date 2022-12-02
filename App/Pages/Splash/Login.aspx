<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ASP_HospitalPortal.App.Pages.Splash.Loginaspx" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div id="loginBox" >
            <img src="images/l.png" style="margin-top:50px; width:60%;" />
            <p>
                Login ID : <asp:TextBox CssClass="textboxes" ID="mailbox" Placeholder="Mail" runat="server"></asp:TextBox><br /><br />
                Password : <asp:TextBox CssClass="textboxes" ID="passwordbox" Placeholder ="Password" TextMode="Password" runat="server"></asp:TextBox>
                <br />
                <asp:Button ID="loginbutton" text="Log In" runat="server" OnClick="loginbutton_Click"  />
                <br /><br />  
                Click To  <a href="SignUp.aspx" >Sign Up</a>
            </p>
        </div>
        </div>
    </form>
</body>
</html>

