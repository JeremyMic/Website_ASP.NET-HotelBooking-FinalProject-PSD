<%@ Page Title="" Language="C#" MasterPageFile="~/View/Main.Master" AutoEventWireup="true" CodeBehind="MasterUser.aspx.cs" Inherits="WebApplicationTest.View.MasterUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Stylesheets" runat="server">
    <link rel="stylesheet" type="text/css" href="../Assets/css/register-page.css" />
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="Content" runat="server">
    <div class="container content-wrapper">        <div class="row align-items-center">
            <div class="col-md-4 offset-4 input-group">
                <div class="input-group-prepend">                    <asp:Label ID="Label1" runat="server" Text="Username" class="input-group-text" />                </div>                <asp:TextBox ID="txtUsername" placeholder="Username" runat="server" class="form-control" />            </div>            <div class="col-md-4 offset-4 input-group">
                <asp:RequiredFieldValidator ID="requiredUsername" runat="server" ValidationGroup="groupRegister" class="text-danger" ErrorMessage="Username cannot be empty" ControlToValidate="txtUsername" />
            </div>        </div>        <div class="row align-items-center">
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
        </div>        <div class="row align-items-center">
            <div class="col-md-4 offset-4 input-group">
                <div class="input-group-prepend">
                     <asp:Label ID="Label5" runat="server" Text="Role" class="input-group-text" />
                </div>
                <asp:DropDownList ID="roleDropDownList" runat="server" class="form-control">
                    <asp:ListItem Text="User" Value="User"/>
                    <asp:ListItem Text="Admin" Value="Admin"/>
                </asp:DropDownList>
            </div>
        </div>        <div class="row align-items-center">
            <div class="col-md-4 offset-4">
                <asp:Button ID="btnProcess" runat="server" Text="Submit" ValidationGroup="groupRegister" class="btn btn-primary w-100" OnClick="btnProcess_Click" />
            </div>        </div>    </div>
</asp:Content>

