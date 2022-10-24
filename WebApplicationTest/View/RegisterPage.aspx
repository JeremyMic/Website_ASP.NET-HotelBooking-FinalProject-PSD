<%@ Page Title="" Language="C#" MasterPageFile="~/View/Main.Master" AutoEventWireup="true" CodeBehind="RegisterPage.aspx.cs" Inherits="WebApplicationTest.View.RegisterPage" %>

<asp:Content ContentPlaceHolderID="title" runat="server"> Register Page</asp:Content>

<asp:Content ContentPlaceHolderID="Stylesheets" runat="server">
 <link rel="stylesheet" type="text/css" href="../Assets/css/register-page.css" />
</asp:Content>

<asp:Content ContentPlaceHolderID="Content" runat="server">
    <div class="container content-wrapper">
        <div class="row align-items-center">
            <div class="col-md-4 offset-4 input-group">
                <div class="input-group-prepend">
                    <asp:Label ID="lblUsername" Text="Username" runat="server" class="input-group-text" />
                </div>
                <asp:TextBox ID="txtUsername" placeholder="Username" runat="server" class="form-control" />
            </div>
            <div class="col-md-4 offset-4 input-group">
                <asp:RequiredFieldValidator ID="requiredUsername" runat="server" ValidationGroup="groupRegister" class="text-danger" ErrorMessage="Username cannot be empty" ControlToValidate="txtUsername" />
            </div>
        </div>

        <div class="row align-items-center">
            <div class="col-md-4 offset-4 input-group">
                <div class="input-group-prepend">
                     <asp:Label ID="lblEmail" Text="Email" runat="server" class="input-group-text" />
                </div>
                <asp:TextBox ID="txtEmail" placeholder="Email" runat="server" class="form-control"/>
            </div>
            <div class="col-md-4 offset-4 input-group">
                <asp:RequiredFieldValidator ID="requiredEmail" runat="server" ValidationGroup="groupRegister" class="text-danger" ErrorMessage="Email cannot be empty" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
            </div>
         </div>
     
        <div class="row align-items-center">
            <div class="col-md-4 offset-4 input-group">
                <div class="input-group-prepend">
                    <asp:Label ID="lblName" Text="Name" runat="server" class="input-group-text" />
                </div>
                <asp:TextBox ID="txtName"  placeholder="Name" runat="server" class="form-control" />
             </div>
            <div class="col-md-4 offset-4 input-group">
                <asp:RequiredFieldValidator ID="RequiredName" runat="server" ValidationGroup="groupRegister" class="text-danger" ErrorMessage="Name cannot be empty" ControlToValidate="txtName" />
            </div>
        </div>
        <div class="row align-items-center">
            <div class="col-md-4 offset-4 input-group">
                <div class="input-group-prepend">
                    <asp:Label ID="lblPassword" runat="server" Text="Password" class="input-group-text" />
                </div>
                <asp:TextBox ID="txtPassword" TextMode="Password" placeholder="Password" runat="server" class="form-control" />
            </div>
            <div class="col-md-4 offset-4 input-group">
                <asp:RequiredFieldValidator ID="requiredPassword" runat="server" ValidationGroup="groupRegister" class="text-danger" ErrorMessage="Password cannot be empty" ControlToValidate="txtPassword" />
            </div>
        </div>
        <div class="row align-items-center">
            <div class="col-md-4 offset-4">
                <asp:Button ID="btnRegister" runat="server" Text="Register" ValidationGroup="groupRegister" class="btn btn-primary w-100" OnClick="btnRegister_Click" />
            </div>
        </div>
    </div>
</asp:Content>





