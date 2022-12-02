<%@ Page Title="" Language="C#" MasterPageFile="~/PortalHOC.Master" AutoEventWireup="true" CodeBehind="DeletePatient.aspx.cs" Inherits="ASP_HospitalPortal.App.Components.Patient.DeletePatient" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <p>
                Enter Patient ID : <asp:TextBox CssClass="textboxes" ID="idbox" Placeholder="Enter ID" runat="server"></asp:TextBox><br /><br />
                
                <asp:Button ID="delDoc" text="DELETE PATIENT" runat="server" OnClick="DeletePatientButton_Click"  />
                <br /><br />  
                Click To  <a href="GenericWriteOperations.aspx" > DELETE </a>
     </p>
</asp:Content>
