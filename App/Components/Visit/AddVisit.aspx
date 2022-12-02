<%@ Page Title="" Language="C#" MasterPageFile="~/PortalHOC.Master" AutoEventWireup="true" CodeBehind="AddVisit.aspx.cs" Inherits="ASP_HospitalPortal.App.Components.Visits.AddVisit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
                Timing : <asp:TextBox CssClass="textboxes" ID="namebox" Placeholder="Name" runat="server"></asp:TextBox><br /><br />
                Purpose : <asp:TextBox CssClass="textboxes" ID="pbox" Placeholder ="CNIC" runat="server"></asp:TextBox>
                <br /><br />
                Doctor_ID : <asp:TextBox CssClass="textboxes" ID="TextBox1" Placeholder ="DOB" runat="server"></asp:TextBox>
                <br /><br />
         Patient_ID : <asp:TextBox CssClass="textboxes" ID="TextBox2" Placeholder ="DOB" runat="server"></asp:TextBox>
         <br /><br />
                <asp:Button ID="addDoc" text="ADD VIST" runat="server" OnClick="btnAddVisit_Click"  />
                <br /><br />  
                
            </p>
</asp:Content>
