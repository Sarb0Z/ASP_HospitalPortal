<%@ Page Title="" Language="C#" MasterPageFile="~/PortalHOC.Master" AutoEventWireup="true" CodeBehind="DeleteVisit.aspx.cs" Inherits="ASP_HospitalPortal.App.Components.Visits.DeleteVisit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <p>
                Enter Visit ID : <asp:TextBox CssClass="textboxes" ID="idbox" Placeholder="Enter ID" runat="server"></asp:TextBox><br /><br />
                
                <asp:Button ID="delDoc" text="DELETE VISIT" runat="server" OnClick="DeleteVisitButton_Click"  />
                <br /><br />  
     </p>
</asp:Content>
