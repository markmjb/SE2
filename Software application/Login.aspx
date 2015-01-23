<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Software_application.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <div class="row">
            <div class="col-md-6 col-lg-12">
            <fieldset>
                <h1>Login</h1>
                <div class="form-horizontal form-group-lg">
                <asp:TextBox ID="tbUsername" runat="server" CssClass="input" placeholder="Email"></asp:TextBox>
                <asp:TextBox ID="tbPassword" runat="server" CssClass="input" placeholder="Password"></asp:TextBox>
                <div class="checkbox-inline">
                    <asp:CheckBox ID="chkBox" runat="server" CssClass="checkbox" Width="20%" Text="Remember me?" ForeColor="Gray" />
                </div>
                <asp:Button ID="btnLogin" CssClass="btn-primary" Text="Login" ValidationGroup="LoginGroup" runat="server" OnClick="btnLogin_Click"></asp:Button>
                <asp:RequiredFieldValidator ID="rfvcandidate" runat="server" CssClass="validator" ForeColor="Red" ValidationGroup="LoginGroup" ControlToValidate="tbUsername" ErrorMessage="Please fill in username" InitialValue="">
                </asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="validator" ForeColor="Red" runat="server" ValidationGroup="LoginGroup" ControlToValidate="tbPassword" ErrorMessage="Please fill in password" InitialValue="">
                </asp:RequiredFieldValidator>
                <asp:Label ID="lblLoginError" runat="server" Visible="false" CssClass="validator" Text="Wrong Username/Password" ForeColor="Red"></asp:Label> 
            </div>
                </fieldset>
                </div>
            <fieldset>            <div class="col-md-6">
                <h1>Register</h1>
                <asp:TextBox ID="tbEmail" runat="server" Class="input" placeholder="Email"></asp:TextBox>
                <asp:TextBox ID="tbPassword1" runat="server" Class="input" placeholder="Password"></asp:TextBox>
                <asp:TextBox ID="tbPassword2" runat="server" Class="input" placeholder="Confirm Password"></asp:TextBox>
                <asp:Button ID="btnSignup" runat="server" Class="btn-primary" ValidationGroup="SignupGroup" Text="Sign up" OnClick="btnSignup_Click" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ForeColor="Red" CssClass="validator" runat="server" ValidationGroup="SignupGroup" ControlToValidate="tbEmail" ErrorMessage="Please fill in email" InitialValue="">
                </asp:RequiredFieldValidator>
                <asp:Label ID="lblUsernameError" runat="server" Visible="false" CssClass="validator" Text="Username already exists" ForeColor="Red"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ForeColor="Red" CssClass="validator" runat="server" ValidationGroup="SignupGroup" ControlToValidate="tbPassword1" ErrorMessage="Please fill in password" InitialValue="">
                </asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ForeColor="Red" CssClass="validator" runat="server" ValidationGroup="SignupGroup" ControlToValidate="tbPassword2" ErrorMessage="Please fill in password" InitialValue="">
                </asp:RequiredFieldValidator>
                
            </div></fieldset>
            </div>
                


</asp:Content>
