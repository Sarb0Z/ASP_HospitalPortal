<%@ Page Title="" Language="C#" MasterPageFile="~/PortalHOC.Master" AutoEventWireup="true" CodeBehind="AddDoctor.aspx.cs" Inherits="ASP_HospitalPortal.App.Components.Doctor.AddDoctor1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <p>
                Doctor Name : <asp:TextBox CssClass="textboxes" ID="namebox" Placeholder="Name" runat="server"></asp:TextBox><br /><br />
                Title : <asp:TextBox CssClass="textboxes" ID="titlebox" Placeholder ="Title" runat="server"></asp:TextBox>
                <br />
                <asp:Button ID="addDoc" text="ADD DOCTOR" runat="server" OnClick="addDoc_Click"  />
                <br /><br />  
            </p>
</asp:Content>
