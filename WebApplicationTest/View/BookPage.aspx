<%@ Page Title="" Language="C#" MasterPageFile="~/View/Main.Master" AutoEventWireup="True" CodeBehind="BookPage.aspx.cs" Inherits="WebApplicationTest.View.BookPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Stylesheets" runat="server">
    <link rel="stylesheet" type="text/css" href="../Assets/css/book-page.css" /> 
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content" runat="server">
<%--     <div class="container">
        <div class="row h-100">
            <div class="col-md-12 h-100 d-flex align-items-center justify-content-center">
                <div class="col-md-3">
                    <div class="card">
                       
                        <%

                            if (hotel != null)
                            {

                        %>
                        <div class="card-header">
                            <h4><%= hotel.name %></h4>
                        </div>
                        <div class="card-body">
                            <p>Price: <%= ((decimal)hotel.price).ToString("C") %> /night</p>
                            <p>Number of Rooms Available : <%= hotel.quantity %></p>
                            <p>Room Type : <%= hotel.roomType %></p>
                            <asp:ScriptManager runat="server"></asp:ScriptManager>
                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                    <ContentTemplate>
                                        <asp:Label ID="Label3" runat="server" Text="Check In Date: " />
                                        <asp:Calendar ID="calendarCheckIn" runat="server" />
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                    <ContentTemplate>
                                        <asp:Label ID="Label1" runat="server" Text="Check Out Date: " />
                                        <asp:Calendar ID="calendarCheckOut" runat="server" />
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                        </div>
                        <%
                            if (Session["auth_user"] != null)
                            {
                        %>
                        <div class="card-footer">
                            <div class="col-md-12 d-flex flex-column">
                                <asp:Label Text="Quantity : " runat="server" />
                                <asp:TextBox class="my-2" TextMode="Number" ID="txtQuantity" runat="server" />
                                <asp:RangeValidator CssClass="text-danger" ID="qtyValidator" MinimumValue="1" MaximumValue="100" ControlToValidate="txtQuantity" ErrorMessage="Invalid Quantity!" Display="Dynamic" runat="server" />
                                <asp:Button CssClass="btn btn-primary float-right" On_Click="btnBuy_Click" Text="Buy" runat="server" />
                            </div>
                        </div>
                        <%
                                }
                            }
                            else
                            {
                        %>
                        <asp:Label Text="Nothing " runat="server" />
                        <%
                            }
                            %>
                    </div>
                </div>
            </div>
        </div>
    </div>--%>
    <div id="booking">
        <div class="container">
            <div class="row">
                <div class="hotel-selected col-md-12 mt-3">
                    <div class="hotel-card d-flex">
                        <%

                            if (hotel != null)
                            {

                        %>
                        <img src="/images/hotel1.jpg" class="card-img" alt="" />
                        <div class="card-body mt-5 ms-4">
                            <h3 class="card-title"><%= hotel.name %></h3>
                            <i class='bx bxs-star star'></i>
                            <i class='bx bxs-star star'></i>
                            <i class='bx bxs-star star'></i>
                            <i class='bx bxs-star star'></i>
                            <i class='bx bxs-star star'></i>
                            <h6 class="mt-2">
                                <i class='bx bxs-location-plus'></i>
                                <%= hotel.address %>
                            </h6>
                            <h5 class="price">
                                <%= ((decimal)hotel.price).ToString("C") %>
                                <small>/night</small>
                            </h5>
                            <h5> 
                                Room Type: <%= hotel.roomType %>
                            </h5>
                        </div>
                    </div>
                </div>
            </div>
            <%
                if (Session["auth_user"] != null)
                {
            %>
            <div class="row">
                <div class="booking-form col-md-12 mb-5">
                    <div class="row" id="quantitybox">
                        <div class="col-md-6">
                            <asp:Label Text="Quantity : " runat="server" />
                            <asp:TextBox class="my-2" TextMode="Number" ID="txtQuantity" runat="server" />
                            <asp:RangeValidator CssClass="text-danger" ID="qtyValidator" MinimumValue="1" MaximumValue="100" ControlToValidate="txtQuantity" ErrorMessage="Invalid Quantity!" Display="Dynamic" runat="server" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="booking-form col-md-12 mb-5">
                    <div class="row">
                        <div class="col-md-6">
                            <asp:ScriptManager runat="server"></asp:ScriptManager>
                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
                                    <asp:Label ID="Label3" runat="server" Text="Check In Date: " />
                                    <asp:Calendar ID="calendarCheckIn" runat="server" />
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </div>
                        <div class="col-md-6">
                            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                <ContentTemplate>
                                    <asp:Label ID="Label1" runat="server" Text="Check Out Date: " />
                                    <asp:Calendar ID="calendarCheckOut" runat="server" />
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </div>
                    </div>
                </div>
                        
                <div class="form-btn">
                     <asp:Button CssClass="btn btn-primary float-right" On_Click="btnBook_Click" Text="Book" runat="server" />
                </div>
            </div>
            <%
                }
                            }
                            
                        %>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Scripts" runat="server">
</asp:Content>
