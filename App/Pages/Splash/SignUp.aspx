<%@ Page Title="" Language="C#" MasterPageFile="~/PortalHOC.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="ASP_HospitalPortal.App.Pages.Splash.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div id="loginBox" >
            <img src="images/l.png" style="margin-top:50px; width:60%;" />
        <p>
        User Name: <asp:TextBox CssClass="textboxes" ID="NameBox" runat="server"></asp:TextBox>
        <br /><br />
        E-Mail Address: <asp:TextBox CssClass="textboxes" ID="MailBox" runat="server"></asp:TextBox>
        <br /><br />
        Password: <asp:TextBox CssClass="textboxes" ID="PassBox" TextMode="Password" runat="server"></asp:TextBox>
        <br /><br />
        CNIC: <asp:TextBox ID="CNICBox" CssClass="textboxes" runat="server"></asp:TextBox>
        <br /><br />
        DOB: <asp:TextBox ID="DOB" CssClass="textboxes" runat="server"></asp:TextBox>

        <asp:Button ID="signupbutton" Text="Create Account" runat="server" OnClick="signupbutton_Click" />
        <br /><br />
            Click To  <a href="Login.aspx" >Log In</a> if you Already Have an Account.
            </p>
        </div>

        
</asp:Content>
