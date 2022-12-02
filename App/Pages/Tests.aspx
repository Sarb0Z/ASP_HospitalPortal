<%@ Page Title="" Language="C#" MasterPageFile="~/PortalHOC.Master" AutoEventWireup="true" CodeBehind="Tests.aspx.cs" Inherits="ASP_HospitalPortal.App.Pages.Tests" %>
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
                           <h4>Test List</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                      <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:TestTableConnectionString %>" SelectCommand="SELECT * FROM [tests]"></asp:SqlDataSource>
                      <div class="col">
                          <asp:GridView class="table table-striped table-bordered" ID="GridView6" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource6">
                             <Columns>
                              <asp:BoundField DataField="id" HeaderText="ID"  ReadOnly="True" InsertVisible="False" SortExpression="id" />
                              <asp:BoundField DataField="test_name" HeaderText="Name" SortExpression="test_name"          />
                              <asp:BoundField DataField="test_description" HeaderText="Description" SortExpression="test_description"></asp:BoundField>
                                 <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price"        ></asp:BoundField>
                              </Columns>
                        </asp:GridView>
                     </div>
                  </div>
               </div>
            </div>
         </div>
   </div>
</asp:Content>
