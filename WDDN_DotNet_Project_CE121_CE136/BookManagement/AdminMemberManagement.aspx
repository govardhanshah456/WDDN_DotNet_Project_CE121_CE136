<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminMemberManagement.aspx.cs" Inherits="BookManagement.AdminMemberManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            position: relative;
            display: flex;
            flex-direction: column;
            min-width: 0;
            word-wrap: break-word;
            background-clip: border-box;
            border-radius: 0.25rem;
            -ms-flex-direction: column;
            left: -3px;
            top: 4px;
            background-color: #fff;
        }
    </style>
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
            <div class="col-md-6">
                <div class="card" style="border-radius:30px;background: #e9efef;">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4 style="text-align:center;">Member Details</h4>
                                    <img src="imgs/generaluser.png" style="width:90px;height:90px;text-align:center;vertical-align:middle;"/>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row">

                            <div class="col-md-3">
                                <label>Member ID: </label>
                                 <div class="form-group">
                                     <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" Placeholder="Member ID"></asp:TextBox>
                                         <asp:Button Text="Submit" runat="server" class="btn btn-sm btn-success" ID="Button5" OnClick="Button5_Click"/>
                                     </div>

                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>Full Name: </label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" Placeholder="Full Name" ReadOnly="True"></asp:TextBox>
                                        <%--<asp:LinkButton ID="LinkButton4" runat="server" class="btn btn-sm btn-success"/>--%>
                                        
                                    </div>
                                    
                                </div>
                            </div>
                            <div class="col-md-5">
                                <label>Account Type:</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" Placeholder="Account Type" ReadOnly="True"></asp:TextBox>
                                        <asp:LinkButton ID="LinkButton1" Text="S" runat="server" class="btn btn-sm btn-success" OnClick="LinkButton1_Click" style="width: 13px"/>
                                        <asp:LinkButton ID="LinkButton2" Text="P" runat="server" class="btn btn-sm btn-warning" OnClick="LinkButton2_Click" style="width: 13px"/>
                                        <asp:LinkButton ID="LinkButton3" Text="D" runat="server" class="btn btn-sm btn-danger" OnClick="LinkButton3_Click" style="width: 16px"/>
                                    </div>
                                </div>
                            </div>
                            
                        </div>
                        <br>
                        <div class="row">
                            
                            <div class="col-md-3">
                                <label>Birth Date :</label>
                                <div class="form-group">
                                    <asp:TextBox readonly="true" CssClass="form-control" ID="TextBox8" runat="server" Placeholder="DOB"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>Contact Number:</label>
                                <div class="form-group">
                                    <asp:TextBox readonly="true" CssClass="form-control" ID="TextBox7" runat="server" Placeholder="Contact No"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-5">
                                <label>Email:</label>
                                <div class="form-group">
                                    <asp:TextBox readonly="true" CssClass="form-control" ID="TextBox6" runat="server" Placeholder="Email"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            
                            <div class="col-md-3">
                                <label>State :</label>
                                <div class="form-group">
                                    <asp:TextBox readonly="true" CssClass="form-control" ID="TextBox9" runat="server" Placeholder="State"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>City:</label>
                                <div class="form-group">
                                    <asp:TextBox readonly="true" CssClass="form-control" ID="TextBox10" runat="server" Placeholder="City"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-5">
                                <label>Pincode:</label>
                                <div class="form-group">
                                    <asp:TextBox readonly="true" CssClass="form-control" ID="TextBox11" runat="server" Placeholder="Pincode"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                &nbsp;<div class="form-group">
                                    Address:</div>
                                    <asp:TextBox ReadOnly="True" CssClass="form-control" ID="TextBox12" runat="server" Height="88px" Placeholder="Address" Width="600px"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col" style="width:100%;">
                                <br>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-8 mx-auto">
                                <br>
                                    <center>
                                        <asp:Button ID="Button1" class="btn btn-lg btn-block btn-danger" runat="server" Text="Delete User Permanently" OnClick="Button1_Click" onclientclick="return confirm('Delete User?');"/>
                                    </center>
                            </div>
                        </div>
                    </div>
                </div>
            <div class="col-md-6">
                <div class="auto-style1" style="border-radius:30px;background: #e9efef;">

                        <div class="row">
                            <h4 style="text-align:center;">Member List</h4>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ebookDBConnectionString2 %>" SelectCommand="SELECT [account_status], [member_id], [email] FROM [member_login]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="member_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="account_status" HeaderText="account_status" SortExpression="account_status" />
                                        <asp:BoundField DataField="member_id" HeaderText="member_id" ReadOnly="True" SortExpression="member_id" />
                                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                                    </Columns>
                                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#FFF1D4" />
                                    <SortedAscendingHeaderStyle BackColor="#B95C30" />
                                    <SortedDescendingCellStyle BackColor="#F1E5CE" />
                                    <SortedDescendingHeaderStyle BackColor="#93451F" />
                                </asp:GridView>
                            </div>
                        </div>

                    </div>
                <a href="homepage.aspx"><< Back To Home</a>
            </div>
        </div>
    </div> 
</asp:Content>
