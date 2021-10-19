<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="usersignup.aspx.cs" Inherits="BookManagement.usersignup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">
                <div class="card" style="border-radius:30px;background: #e9efef;">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="imgs/generaluser.png" style="width:90px;height:90px;text-align:center;vertical-align:middle;"/>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <h4 style="text-align:center;">User SignUp</h4>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                            
                            <div class="col-md-6">
                                <label>Full Name : </label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="fullname_txt" runat="server" Placeholder="Full Name"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Date Of Birth : </label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="dob_txt" runat="server" Placeholder="Date" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Contact NO : </label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="contact_txt" runat="server" Placeholder="Contact No" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Email  : </label>
                                 <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="email_txt" runat="server" Placeholder="Email" TextMode="Email"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-md-4">
                                <label>State </label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">

                                        <asp:ListItem Text="Select" Value="Select" />
                                        <asp:ListItem>Arunachal Pradesh</asp:ListItem>
                                        <asp:ListItem>Andra Pradesh</asp:ListItem>
                                        <asp:ListItem>Assam</asp:ListItem>
                                        <asp:ListItem>Bihar</asp:ListItem>
                                        <asp:ListItem>Chhattisgarh</asp:ListItem>
                                        <asp:ListItem>Rajasthan</asp:ListItem>
                                        <asp:ListItem>Goa</asp:ListItem>
                                        <asp:ListItem>Gujarat</asp:ListItem>
                                        <asp:ListItem>Haryana</asp:ListItem>
                                        <asp:ListItem>Himachal Pradesh</asp:ListItem>
                                        <asp:ListItem>Jammu and Kashmir</asp:ListItem>
                                        <asp:ListItem>Jharkhand</asp:ListItem>
                                        <asp:ListItem>Karnataka</asp:ListItem>
                                        <asp:ListItem>Kerela</asp:ListItem>
                                        <asp:ListItem>Madhya Pradesh</asp:ListItem>
                                        <asp:ListItem>Maharashtra</asp:ListItem>
                                        <asp:ListItem>Odisa</asp:ListItem>
                                        <asp:ListItem>Sikkim</asp:ListItem>
                                        <asp:ListItem>Punjab</asp:ListItem>
                                        <asp:ListItem>Tamil Nadu</asp:ListItem>
                                        <asp:ListItem>West Bengal</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>City  : </label>
                                 <div class="form-group">
                                    <asp:TextBox Class="form-control" ID="city_txt" runat="server" Placeholder="City"></asp:TextBox> 
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>PinCode  : </label>
                                 <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="pincode_txt" runat="server" Placeholder="Pincode" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col">
                                <label>Full Address: </label>
                                <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="fulladdress_txt" runat="server" Placeholder="Full Address" TextMode="MultiLine"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col">
                                 <span class="badge rounded-pill bg-warning text-dark">New Login Credentials</span>
                            </div>
                        </div>

                        <br>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Member ID : </label>
                                <div class="form-group">
                                    <asp:TextBox Class="form-control" ID="TextBox8" runat="server" Placeholder="Member ID"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Password  : </label>
                                 <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" Placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                        </div>




                        <div class="row">
                            <div class="col" style="width:100%;">
                                <br>
                                <div class="form-group">
                                    <center>
                                        <%--<asp:Button class="btn btn-success btn-block btn-lg" style="width:510px;" ID="SignUp" runat="server" Text="Sign Up" OnClick="SignUp_Click" />--%>
                                        <asp:Button class="btn btn-success btn-block btn-lg" style="width:510px;" ID="Button1" runat="server" Text="SignUp" OnClick="Button1_Click" />
                                    </center>
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
