<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="BookManagement.UserProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
      $(document).ready(function () {
      
          //$(document).ready(function () {
              //$('.table').DataTable();
         // });
      
          $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
          //$('.table1').DataTable();
      });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5">
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
                            <h4 style="text-align:center;">Profile</h4>
                            <span style="text-align:center;">Account Status-
                                <asp:Label style="text-align:center;" ID="Label1" runat="server" Text="Your Status" class="badge rounded-pill bg-success"></asp:Label>
                            </span>
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
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" Placeholder="Full Name"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Date Of Birth : </label>
                                 <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" Placeholder="Date Of Birth"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Contact NO : </label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" Placeholder="Contact NO" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Email  : </label>
                                 <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" Placeholder="Email" TextMode="Email"></asp:TextBox>
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
                                    <asp:TextBox class="form-control" ID="TextBox6" runat="server" Placeholder="City" TextMode="SingleLine"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>PinCode  : </label>
                                 <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox7" runat="server" Placeholder="PinCode" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col">
                                <label>Full Address: </label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" Placeholder="Full Address" TextMode="MultiLine"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-md-5 mx-auto">
                                 <span class="badge rounded-pill bg-warning text-dark">New Login Credentials</span>
                            </div>
                        </div>

                        <br>
                        <div class="row">
                            <div class="col-md-4">
                                <label>User ID : </label>
                                <div class="form-group">
                                    <asp:TextBox ReadOnly="true" class="form-control" ID="TextBox8" runat="server" Placeholder="User ID"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Password  : </label>
                                 <div class="form-group">
                                    <asp:TextBox ReadOnly="true" class="form-control" ID="TextBox9" runat="server" Placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>New Password  : </label>
                                 <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox10" runat="server" Placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                        </div>




                        <div class="row">
                            <div class="col" style="width:100%;">
                                <br>
                                <div class="form-group">
                                    <center>
                                        <asp:Button class="btn btn-success btn-block btn-lg" style="width:245px;" ID="Button1" runat="server" Text="Update" OnClick="Button1_Click" />
                                    </center>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <a href="homepage.aspx"><< Back To Home</a>
            </div>
            <div class="col-md-7">
                <div class="card" style="border-radius:30px;background: #e9efef;">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="imgs/books1.png" style="width:90px;height:90px;text-align:center;vertical-align:middle;"/>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <h4 style="text-align:center;">Your Issued Books</h4>
                            <span style="text-align:center;">
                            <asp:Label style="text-align:center;" ID="Label2" runat="server" Text="Your Books List" class="badge rounded-pill bg-success"></asp:Label>
                            </span>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="True">
                                </asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
                <a href="homepage.aspx"><< Back To Home</a>
            </div>
        </div>
    </div>
</asp:Content>
