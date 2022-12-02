<%@ Page Title="" Language="C#" MasterPageFile="~/PortalHOC.Master" AutoEventWireup="true" CodeBehind="AddPatient.aspx.cs" Inherits="ASP_HospitalPortal.App.Components.Patient.AddPatient" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <p>
                Patient Name : <asp:TextBox CssClass="textboxes" ID="namebox" Placeholder="Name" runat="server"></asp:TextBox><br /><br />
                CNIC : <asp:TextBox CssClass="textboxes" ID="cnicbox" Placeholder ="CNIC" runat="server"></asp:TextBox>
                <br /><br />
                DOB : <asp:TextBox CssClass="textboxes" ID="TextBox1" Placeholder ="DOB" runat="server"></asp:TextBox>
                <br /><br />
                <asp:Button ID="addDoc" text="ADD PATIENT" runat="server"  />
                <br /><br />  
                Click To  <a href="GenericWriteOperations.aspx" > ADD </a>
            </p>
</asp:Content>
