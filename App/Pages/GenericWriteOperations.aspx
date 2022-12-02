<%@ Page Title="" Language="C#" MasterPageFile="~/PortalHOC.Master" AutoEventWireup="true" CodeBehind="GenericWriteOperations.aspx.cs" Inherits="ASP_HospitalPortal.App.Pages.GenericWriteOperations" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:Table ID="Table1" runat="server" Height="100px" Width="236px" BorderColor="Black" BorderWidth="1px" BorderStyle="Dotted" CellSpacing="10" >
        
         <asp:TableRow>
             <asp:TableCell>
                 <asp:Label ID="Label" runat="server" Text="Write Operations">
                 </asp:Label>
             </asp:TableCell>
         </asp:TableRow>
        <asp:TableHeaderRow>
            <asp:TableHeaderCell>Users</asp:TableHeaderCell>
            <asp:TableHeaderCell>Operations</asp:TableHeaderCell>
        </asp:TableHeaderRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label1" runat="server" Text="DOCTOR"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:LinkButton ID="LinkButton1" runat="server" Text="Add" CommandName="Edit" href="/App/Components/Doctor/AddDoctor.aspx"></asp:LinkButton>
                <br/> 
                <asp:LinkButton ID="LinkButton2" runat="server" Text="Update" CommandName="Delete" href="/App/Components/Doctor/EditDoctor.aspx"></asp:LinkButton>
                <br/> 
                <asp:LinkButton ID="LinkButton3" runat="server" Text="Delete" CommandName="Delete" href="/App/Components/Doctor/DeleteDoctor.aspx"></asp:LinkButton>
                
            </asp:TableCell>
        </asp:TableRow>
          <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label2" runat="server" Text="PATIENTS"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:LinkButton ID="LinkButton4" runat="server" Text="Add" CommandName="Edit" href="/App/Components/Patient/AddPatient.aspx"></asp:LinkButton>
                <br/> 
                <asp:LinkButton ID="LinkButton5" runat="server" Text="Update" CommandName="Delete" href="/App/Components/Patient/EditPatient.aspx"></asp:LinkButton>
                <br/> 
                <asp:LinkButton ID="LinkButton6" runat="server" Text="Delete" CommandName="Delete" href="/App/Components/Patient/DeletePatient.aspx"></asp:LinkButton>
                
            </asp:TableCell>
        </asp:TableRow>
          <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label3" runat="server" Text="VISITS"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:LinkButton ID="LinkButton7" runat="server" Text="Add" CommandName="Edit" href="/App/Components/Visit/AddVisit.aspx">                    
                  
                </asp:LinkButton>
                        
                <br/> 
                <asp:LinkButton ID="LinkButton8" runat="server" Text="Update" CommandName="Delete" href="/App/Components/Visit/EditVisit.aspx"></asp:LinkButton>
                <br/> 
                <asp:LinkButton ID="LinkButton9" runat="server" Text="Delete" CommandName="Delete" href="/App/Components/Visit/DeleteVisit.aspx"></asp:LinkButton>
     
            </asp:TableCell>
        </asp:TableRow>
          <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label4" runat="server" Text="PERSCRIPTIONS"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:LinkButton ID="LinkButton10" runat="server" Text="Add" CommandName="Edit" href="/App/Components/AddPrescription.aspx">                    
                  
                </asp:LinkButton>
                        
                    
            </asp:TableCell>
        </asp:TableRow>
         
    </asp:Table>
</asp:Content>
