<%@ Page Title="" Language="C#" MasterPageFile="~/PortalHOC.Master" AutoEventWireup="true" CodeBehind="AddPrescription.aspx.cs" Inherits="ASP_HospitalPortal.App.Components.Prescription" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <p>
                Patient ID : <asp:TextBox CssClass="textboxes" ID="pidbox" Placeholder="id" runat="server"></asp:TextBox><br /><br />
          Doctor ID : <asp:TextBox CssClass="textboxes" ID="docbox" Placeholder ="id" runat="server"></asp:TextBox>
                <br /><br />
                Medicine ID : <asp:TextBox CssClass="textboxes" ID="cnicbox" Placeholder ="id" runat="server"></asp:TextBox>
                <br /><br />
                Recommendation : <asp:TextBox CssClass="textboxes" ID="TextBox1" Placeholder ="ENTER" runat="server"></asp:TextBox>
                <br /><br />
         Intake Ammount : <asp:TextBox CssClass="textboxes" ID="iabox" Placeholder ="ENTER" runat="server"></asp:TextBox>
                <br /><br />
         Test ID : <asp:TextBox CssClass="textboxes" ID="tidbox" Placeholder ="id" runat="server"></asp:TextBox>
                <br /><br />
                <asp:Button ID="addDoc" text="ADD PRESCRIPTION" runat="server"  OnClick="btnAddPrescription_Click" />
                <br /><br />  
            </p>
</asp:Content>
