<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Inherits="BookManagement.userlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card" style="border-radius:30px;background: #e9efef;">
                    <div class="card-body" style="height:480px;">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="imgs/generaluser.png" style="width:90px;height:90px;text-align:center;vertical-align:middle;"/>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <h3 style="text-align:center;">User Login</h3>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col" style="width:100%;">
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" Placeholder="User ID"></asp:TextBox>
                                </div>

                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" Placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div>
                                <br>
                                <div class="form-group">
                                    <asp:Button class="btn btn-success btn-block btn-lg" style="width:510px;" ID="login_btn" runat="server" Text="Login" OnClick="Button1_Click" />
                                </div>
                                <br>
                                <div class="form-group">
                                    <asp:Button class="btn btn-success btn-block btn-lg" style="width:510px;" ID="Button2" runat="server" Text="SignUp" OnClick="Button2_Click"/>
                                    <%--<a href="usersignup.aspx"><input class="btn btn-primary btn-block btn-lg" style="width:510px;" ID="signup_btn" type="button" value="Sign Up" /></a>--%>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <a href="homepage.aspx"><< Back To Home</a>
            </div>

        </div>
    </div>
</asp:Content>
