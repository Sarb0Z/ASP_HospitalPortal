<%@ Page Title="" Language="C#" MasterPageFile="~/PortalHOC.Master" AutoEventWireup="true" CodeBehind="ViewPatients.aspx.cs" Inherits="ASP_HospitalPortal.App.Pages.ViewPatients" %>
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
                           <h4>Patient List</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                      <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:PatientTableConnectionString %>" SelectCommand="SELECT * FROM [Patient]"></asp:SqlDataSource>
                      <div class="col">
                          <asp:GridView class="table table-striped table-bordered" ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource2">
                             <Columns>
                              <asp:BoundField DataField="id" HeaderText="id"  ReadOnly="True" InsertVisible="False" SortExpression="id" />
                              <asp:BoundField DataField="patient_name"  HeaderText="patient_name" SortExpression="patient_name"    />
                              <asp:BoundField DataField="cnic" HeaderText="cnic" SortExpression="cnic"   ></asp:BoundField>
                              <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob"    />
                              </Columns>
                        </asp:GridView>
                     </div>
                  </div>
               </div>
            </div>
         </div>
   </div>
</asp:Content>
