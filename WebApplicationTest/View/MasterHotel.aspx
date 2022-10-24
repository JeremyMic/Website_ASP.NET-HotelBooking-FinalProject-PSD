<%@ Page Title="" Language="C#" MasterPageFile="~/View/Main.Master" AutoEventWireup="true" CodeBehind="MasterHotel.aspx.cs" Inherits="WebApplicationTest.View.MasterHotel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">Hotel
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Stylesheets" runat="server">
    <link rel="stylesheet" type="text/css" href="../Assets/css/register-page.css" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content" runat="server">
    <div class="container content-wrapper">
        <div class="row align-items-center">
            <div class="col-md-4 offset-4 input-group">
                <div class="input-group-prepend">
                    <asp:Label ID="Label1" runat="server" Text="Name" class="input-group-text" />
                </div>
                <asp:TextBox ID="txtName" runat="server" class="form-control" />
            </div>
            <div class="col-md-4 offset-4 input-group">
                <asp:RequiredFieldValidator ID="requiredName" runat="server" ValidationGroup="groupSubmit" class="text-danger" ErrorMessage="Hotel name cannot be empty" ControlToValidate="txtName" />
            </div>
        </div>

        <div class="row align-items-center">
            <div class="col-md-4 offset-4 input-group">
                <div class="input-group-prepend">
                    <asp:Label ID="Label5" runat="server" Text="Address" class="input-group-text" />
                </div>
                <asp:TextBox ID="txtAddress" runat="server" class="form-control" />
            </div>
            <div class="col-md-4 offset-4 input-group">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ValidationGroup="groupSubmit" class="text-danger" ErrorMessage="Hotel name cannot be empty" ControlToValidate="txtAddress" />
            </div>
        </div>

        <div class="row align-items-center">
            <div class="col-md-4 offset-4 input-group">
                <div class="input-group-prepend">
                    <asp:Label ID="Label2" runat="server" Text="Room Type" class="input-group-text" />
                </div>
                <asp:TextBox ID="txtRoomType" runat="server" class="form-control" />
            </div>
            <div class="col-md-4 offset-4 input-group">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ValidationGroup="groupSubmit" class="text-danger" ErrorMessage="Room Type cannot be empty" ControlToValidate="txtRoomType" />
            </div>
        </div>

        <div class="row align-items-center">
            <div class="col-md-4 offset-4 input-group">
                <div class="input-group-prepend">
                    <asp:Label ID="Label3" runat="server" Text="Price" class="input-group-text" />
                </div>
                <asp:TextBox ID="txtPrice" runat="server" class="form-control" />
            </div>
            <div class="col-md-4 offset-4 input-group">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ValidationGroup="groupSubmit" class="text-danger" ErrorMessage="Price cannot be empty" ControlToValidate="txtPrice" />
            </div>
        </div>

        <div class="row align-items-center">
            <div class="col-md-4 offset-4 input-group">
                <div class="input-group-prepend">
                    <asp:Label ID="Label4" runat="server" Text="Number of Rooms" class="input-group-text" />
                </div>
                <asp:TextBox ID="txtQuantity" runat="server" class="form-control" />
            </div>
            <div class="col-md-4 offset-4 input-group">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ValidationGroup="groupSubmit" class="text-danger" ErrorMessage="Number of rooms cannot be empty" ControlToValidate="txtQuantity" />
            </div>
        </div>

        <div class="row align-items-center">
            <div class="col-md-4 offset-4">
                <asp:Button ID="btnProcess" runat="server" Text="Submit" CausesValidation="true" ValidationGroup="groupSubmit" class="btn btn-primary w-100"  OnClick="btnProcess_Click" />
            </div>
        </div>
    </div>
</asp:Content>


