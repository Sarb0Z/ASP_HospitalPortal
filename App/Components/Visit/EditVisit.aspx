<%@ Page Title="" Language="C#" MasterPageFile="~/PortalHOC.Master" AutoEventWireup="true" CodeBehind="EditVisit.aspx.cs" Inherits="ASP_HospitalPortal.App.Components.Visits.EditVisit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <p>
                ID : <asp:TextBox CssClass="textboxes" ID="IDBox" Placeholder="Id" runat="server"></asp:TextBox><br /><br />

                Timing : <asp:TextBox CssClass="textboxes" ID="Timing" Placeholder="Id" runat="server"></asp:TextBox><br /><br />
                Purpose : <asp:TextBox CssClass="textboxes" ID="PurposeBox" Placeholder ="Purpose" runat="server"></asp:TextBox>
                <br /><br />
                Doctor_ID : <asp:TextBox CssClass="textboxes" ID="DoctorBox" Placeholder ="Doc_ID" runat="server"></asp:TextBox>
                <br /><br />
                Patient_ID : <asp:TextBox CssClass="textboxes" ID="PatientBox" Placeholder ="Patient" runat="server"></asp:TextBox>
         <br /><br />
                <asp:Button ID="addDoc" text="UPDATE VIST" runat="server" OnClick="btnUpdateVisit_Click"  />
                <br /><br />  
            </p>
</asp:Content>
