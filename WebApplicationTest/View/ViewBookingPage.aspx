<%@ Page Title="" Language="C#" MasterPageFile="~/View/Main.Master" AutoEventWireup="true" CodeBehind="ViewBookingPage.aspx.cs" Inherits="WebApplicationTest.View.ViewBookingPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Stylesheets" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content" runat="server">
    <div class="container mt-3">
        <div class="row">
            <div class="col-md-12">
            <%
                if (books == null || books.Count < 1)
                {
            %>
                    <h1 class="text-center">You Have Not Book Any Hotels</h1>
            <%
                }
                else
                {
                foreach (var item in books)
                {
            %>
            <div class="card mb-3">
                <div class="card-header">
                <%= item.Hotel.name %>
                </div>
                <div class="card-body">
                Quantity : <%= item.Quantity %> pcs
                </div>
                <div class="card-footer">
                Subtotal : <%= ((double)(item.Hotel.price * item.Quantity)).ToString("C") %>
                </div>
            </div>
            <%
                }
            %>
            <div class="card mb-3">
                <div class="card-body">
                    <h3>
                        <strong>
                            Grandtotal : <%= ((double)books.Sum(x => x.Hotel.price * x.Quantity)).ToString("C") %>
                        </strong>
                    </h3>
                </div>
            </div>
            <%
                }
            %>
         </div>
    </div>
 </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Scripts" runat="server">
</asp:Content>
