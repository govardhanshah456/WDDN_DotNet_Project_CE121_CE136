<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminBookIssueing.aspx.cs" Inherits="BookManagement.AdminBookIssueing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
                                    <h4 style="text-align:center;">Book Issues</h4>
                                    <img src="imgs/books.png" style="width:90px;height:90px;text-align:center;vertical-align:middle;"/>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>Member ID: </label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" Placeholder="Member ID"></asp:TextBox>
                                        
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Book ID: </label>
                                 <div class="form-group">
                                     <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" Placeholder="Book ID"></asp:TextBox>
                                         <asp:Button Text="Submit" runat="server" class="btn btn-sm btn-success" ID="Button5" OnClick="Button5_Click"/>
                                     </div>

                                </div>
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Member Name:</label>
                                <div class="form-group">
                                    <asp:TextBox readonly="true" CssClass="form-control" ID="TextBox6" runat="server" Placeholder="Member Name"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Book Name:</label>
                                <div class="form-group">
                                    <asp:TextBox readonly="true" CssClass="form-control" ID="TextBox7" runat="server" Placeholder="Book Name"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Start Date:</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" Placeholder="Start Date" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>End Date:</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" Placeholder="End Date" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col" style="width:100%;">
                                <br>
                                <div class="form-group">
                                    <center>
                                        <asp:Button class="btn btn-success btn-block btn-md" ID="Button1" runat="server" Text="Issue" OnClick="Button1_Click" />
                                        <asp:Button class="btn btn-warning btn-block btn-md" ID="Button4" runat="server" Text="Return" OnClick="Button4_Click" />
                                    </center>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <a href="homepage.aspx"><< Back To Home</a>
            </div>
            <div class="col-md-6">
                <div class="card" style="border-radius:30px;background: #e9efef;">
                        <div class="row">
                            <h4 style="text-align:center;">Issued Books List</h4>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>
                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ebookDBConnectionString3 %>" SelectCommand="SELECT * FROM [book_issue]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="member_id" HeaderText="member_id" SortExpression="member_id" />
                                        <asp:BoundField DataField="member_name" HeaderText="member_name" SortExpression="member_name" />
                                        <asp:BoundField DataField="book_id" HeaderText="book_id" SortExpression="book_id" />
                                        <asp:BoundField DataField="book_name" HeaderText="book_name" SortExpression="book_name" />
                                        <asp:BoundField DataField="issue_date" HeaderText="issue_date" SortExpression="issue_date" />
                                        <asp:BoundField DataField="due_date" HeaderText="due_date" SortExpression="due_date" />
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
