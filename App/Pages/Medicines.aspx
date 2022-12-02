<%@ Page Title="" Language="C#" MasterPageFile="~/PortalHOC.Master" AutoEventWireup="true" CodeBehind="Medicines.aspx.cs" Inherits="ASP_HospitalPortal.App.Pages.Medicines" %>
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
                           <h4>Medicine List</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                      <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:MedicineTableConnectionString %>" SelectCommand="SELECT * FROM [medicines]"></asp:SqlDataSource>
                      <div class="col">
                          <asp:GridView class="table table-striped table-bordered" ID="GridView5" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource5">
                             <Columns>
                              <asp:BoundField DataField="id" HeaderText="id"  ReadOnly="True" InsertVisible="False" SortExpression="id" />
                              <asp:BoundField DataField="medicine_name" HeaderText="medicine_name" SortExpression="medicine_name"          />
                              <asp:BoundField DataField="supplier_name" HeaderText="supplier_name" SortExpression="supplier_name"></asp:BoundField>
                              <asp:BoundField DataField="price" HeaderText="price" SortExpression="price"        ></asp:BoundField>
                              </Columns>
                        </asp:GridView>
                     </div>
                  </div>
               </div>
            </div>
         </div>
   </div>
</asp:Content>
