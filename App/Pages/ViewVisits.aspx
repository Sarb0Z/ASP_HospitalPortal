<%@ Page Title="" Language="C#" MasterPageFile="~/PortalHOC.Master" AutoEventWireup="true" CodeBehind="ViewVisits.aspx.cs" Inherits="ASP_HospitalPortal.App.Pages.ViewVisits" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
      $(document).ready(function () {
          $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
      });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="container-fluid justify-content-center">
  
         <div class="col-md-7">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Visit List</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VisitViewConnectionString %>" SelectCommand="SELECT * FROM [visit_details]"></asp:SqlDataSource>
                      <div class="col">
                         <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
                             <Columns>
                              <asp:BoundField DataField="id" HeaderText="id"  ReadOnly="True" SortExpression="id" />
                              <asp:BoundField DataField="patient_name" HeaderText="patient_name" SortExpression="patient_name"    />
                              <asp:BoundField DataField="doctor_name" HeaderText="doctor_name" SortExpression="doctor_name"></asp:BoundField>
                              <asp:BoundField DataField="timing" HeaderText="timing"  SortExpression="timing" />
                              <asp:BoundField DataField="purpose" HeaderText="purpose"  SortExpression="purpose" />
                              </Columns>
                        </asp:GridView>
                     </div>
                  </div>
               </div>
            </div>
         </div>
   </div>

</asp:Content>
