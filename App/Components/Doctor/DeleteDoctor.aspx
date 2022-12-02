<%@ Page Title="" Language="C#" MasterPageFile="~/PortalHOC.Master" AutoEventWireup="true" CodeBehind="DeleteDoctor.aspx.cs" Inherits="ASP_HospitalPortal.App.Components.Doctor.DeleteDoctor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <p>
                Enter Doctor ID : <asp:TextBox CssClass="textboxes" ID="idbox" Placeholder="Enter ID" runat="server"></asp:TextBox><br /><br />
                <br />
                <asp:Button ID="delDoc" text="DELETE DOCTOR" runat="server" OnClick="DeleteDoctorButton_Click" />
                <br /><br />  
                Click To  <a href="GenericWriteOperations.aspx" > DELETE </a>
     </p>
</asp:Content>
