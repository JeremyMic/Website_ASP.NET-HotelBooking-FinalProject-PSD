<%@ Page Title="" Language="C#" MasterPageFile="~/View/Main.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebApplicationTest.View.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ContentPlaceHolderID="Stylesheets" runat="server">
    <link rel="stylesheet" type="text/css" href="../Assets/css/home.css" /> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div id="banner" class="d-flex align-items-center">
        <div class="container">
            <div class="text-center banner-content">
                <p class="title">Hotel Booking</p>
                <h4>
                    The best place to book your stay!
                </h4>
                <a href="HotelPage.aspx" class="discover">
                    Discover Hotels
                </a>
            </div>
        </div>
    </div>

    <div id="recommendation">
        <div class="container">
            <div class="recommendation-title text-center mt-5 mb-5">
                <p>Hotel Recommendation</p>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-12 mb-5">
                    <div class="recommendation-card">
                        <img src="/Assets/hotel1.jpg" class="card-img" alt="" />
                        <div class="card-body">
                            <h3 class="card-title">Hotel Tentrem Jogja</h3>
                            <i class='bx bxs-star star'></i>
                            <i class='bx bxs-star star'></i>
                            <i class='bx bxs-star star'></i>
                            <i class='bx bxs-star star'></i>
                            <i class='bx bxs-star star'></i>
                            <h6 class="mt-2">
                                <i class='bx bxs-location-plus'></i>
                                Jl. P. Mangkubumi No.72A
                            </h6>
                            <h5 class="price">
                                Rp1.500.000
                                <small>/night</small>
                            </h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12 mb-5">
                    <div class="recommendation-card">
                        <img src="/Assets/hotel1.jpg" class="card-img" alt="" />
                        <div class="card-body">
                            <h3 class="card-title">Hotel Tentrem Jogja</h3>
                            <i class='bx bxs-star star'></i>
                            <i class='bx bxs-star star'></i>
                            <i class='bx bxs-star star'></i>
                            <i class='bx bxs-star star'></i>
                            <i class='bx bxs-star star'></i>
                            <h6 class="mt-2">
                                <i class='bx bxs-location-plus'></i>
                                Jl. P. Mangkubumi No.72A
                            </h6>
                            <h5 class="price">
                                Rp1.500.000
                                <small>/night</small>
                            </h5>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-12 mb-5">
                    <div class="recommendation-card">
                        <img src="/Assets/hotel1.jpg" class="card-img" alt="" />
                        <div class="card-body">
                            <h3 class="card-title">Hotel Tentrem Jogja</h3>
                            <i class='bx bxs-star star'></i>
                            <i class='bx bxs-star star'></i>
                            <i class='bx bxs-star star'></i>
                            <i class='bx bxs-star star'></i>
                            <i class='bx bxs-star star'></i>
                            <h6 class="mt-2">
                                <i class='bx bxs-location-plus'></i>
                                Jl. P. Mangkubumi No.72A
                            </h6>
                            <h5 class="price">
                                Rp1.500.000
                                <small>/night</small>
                            </h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>



</asp:Content>
