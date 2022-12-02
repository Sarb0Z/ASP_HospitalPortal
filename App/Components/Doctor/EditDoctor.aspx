<%@ Page Title="" Language="C#" MasterPageFile="~/PortalHOC.Master" AutoEventWireup="true" CodeBehind="EditDoctor.aspx.cs" Inherits="ASP_HospitalPortal.App.Components.Doctor.EditDoctor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:Panel ID="Panel1" runat="server">
                <asp:Label ID="Label1" runat="server" Text="Edit Doctor"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Text="Doctor ID"></asp:Label>
                <asp:TextBox ID="txtDoctorID" runat="server" Height="24px" Width="143px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label3" runat="server" Text="Doctor Name"></asp:Label>
                <asp:TextBox ID="txtDoctorName" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label4" runat="server" Text="Doctor Title"></asp:Label>
                <asp:TextBox ID="txtDoctorSpecialization" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label5" runat="server" Text=" Click to "></asp:Label>
                <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
                </asp:Panel>
        </ContentTemplate>
    </asp:UpdatePanel>
                
    </form>
                
</asp:Content>
