<%@ Page Title="" Language="C#" MasterPageFile="~/View/Main.Master" AutoEventWireup="true" CodeBehind="HotelPage.aspx.cs" Inherits="WebApplicationTest.View.HotelPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Stylesheets" runat="server">
    <link rel="stylesheet" type="text/css" href="../Assets/css/hotel-page.css" /> 
    <link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css' rel='stylesheet' />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content" runat="server">
    <div id="hotels">
        <div class="container">
            <div class="hotels-title text-center mt-5 mb-5">
                <p>Discover Hotels</p>
            </div>
            <div class="row">
                <%
                if(hotels.Count > 0)
                {
                    foreach(var hotel in hotels)
                    {
            %>
                <div class="col-lg-3 col-md-12 mb-5">
                    <div class="hotel-card text-center">
                        <img src="/images/hotel1.jpg" class="card-img" alt="" />
                        
                        
                        <div class="card-body">
                            <h3 class="card-title"><%= hotel.name%></h3>
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
                                <%= hotel.price %>
                                <small>/night</small>
                            </h5>
                        </div>
                        <a href='<%= ResolveUrl("~/View/BookPage.aspx?id=" +  hotel.hotelId) %>'>Book Now</a>
                    </div>
                </div>
                <%
                    }
                }
                %>
            </div>
        </div>
    </div>

</asp:Content>

