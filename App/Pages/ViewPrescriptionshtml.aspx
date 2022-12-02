﻿<%@ Page Title="" Language="C#" MasterPageFile="~/PortalHOC.Master" AutoEventWireup="true" CodeBehind="ViewPrescriptionshtml.aspx.cs" Inherits="ASP_HospitalPortal.App.Pages.ViewPrescriptionshtml" %>
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
                           <h4>Prescriptions List</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                      <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:PrecriptionViewConnectionString %>" SelectCommand="SELECT * FROM [patient_prescription]"></asp:SqlDataSource>
                      <div class="col">
                          <asp:GridView class="table table-striped table-bordered" ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource4">
                             <Columns>
                              <asp:BoundField DataField="id"  HeaderText="id"  ReadOnly="True"  SortExpression="id" />
                              <asp:BoundField DataField="cnic" HeaderText="cnic" SortExpression="cnic"></asp:BoundField>
                              <asp:BoundField DataField="doctor_name"  HeaderText="doctor_name" SortExpression="doctor_name"/>
                              <asp:BoundField DataField="medicine_name" HeaderText="medicine_name" SortExpression="medicine_name"></asp:BoundField>
                              <asp:BoundField DataField="supplier_name" HeaderText="supplier_name" SortExpression="supplier_name"></asp:BoundField>
                              <asp:BoundField DataField="recommendation" HeaderText="recommendation" SortExpression="recommendation"></asp:BoundField>
                              <asp:BoundField DataField="intake_amount" HeaderText="intake_amount" SortExpression="intake_amount"></asp:BoundField>
 
                             </Columns>
                        </asp:GridView>
                     </div>
                  </div>
               </div>
            </div>
         </div>
   </div>
</asp:Content>