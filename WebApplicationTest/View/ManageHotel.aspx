<%@ Page Title="" Language="C#" MasterPageFile="~/View/Main.Master" AutoEventWireup="true" CodeBehind="ManageHotel.aspx.cs" Inherits="WebApplicationTest.View.ManageHotel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">Manage Product
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content" runat="server">
    <div id="HotelDataTableWrapper" class="w-100" runat="server">
        <div class="col-md-12 py-3">
             <div class="container d-flex justify-content-between align-items-center">
                <h4 class="">List of Hotels</h4>
                <asp:Button class="btn btn-success" ID="btnAddNewHotel" Text="Add New Hotel" OnClick="btnAddNewHotel_Click" runat="server" />
            </div>
        </div>
        <div class="col-md-12">
            <div class="container">
                <asp:Table ID="HotelTable" class="table table-bordered text-center" runat="server">
                    <asp:TableHeaderRow>
                        <asp:TableHeaderCell>No.</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Hotel Name</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Address</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Room Type</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Price</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Number of Room Available</asp:TableHeaderCell>
                        <asp:TableHeaderCell ColumnSpan="2">Action
                        </asp:TableHeaderCell>
                    </asp:TableHeaderRow>
                 </asp:Table>
            </div>
        </div>
    </div>
</asp:Content>

