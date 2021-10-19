<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminAuthorManagement.aspx.cs" Inherits="BookManagement.AdminAuthorManagement" %>
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
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="card" style="border-radius:30px;background: #e9efef;">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4 style="text-align:center;">Author Details</h4>
                                    <img src="imgs/writer.png" style="width:90px;height:90px;text-align:center;vertical-align:middle;"/>
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
                                <label>Author ID: </label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" Placeholder="Author ID"></asp:TextBox>
                                        <asp:Button ID="Button2" Text="Submit" runat="server" class="btn btn-sm btn-success" OnClick="Button2_Click"/>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Author Name: </label>
                                 <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" Placeholder="Author Name"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <br>
                        
                        <div class="row">
                            <div class="col">
                                <br>
                                <div class="form-group">
                                    <center>
                                        <asp:Button class="btn btn-success btn-md" ID="Button1" runat="server" Text="Add" OnClick="Button1_Click" />
                                        <asp:Button class="btn btn-warning btn-md" ID="Button3" runat="server" Text="Update" OnClick="Button3_Click" />
                                        <asp:Button class="btn btn-danger btn-md" ID="Button4" runat="server" Text="Delete" OnClick="Button4_Click" />
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
                            <h4 style="text-align:center;">Author List</h4>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>
                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ebookDBConnectionString2 %>" SelectCommand="SELECT * FROM [author_login]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" class="table table-striped table-bordered" DataKeyNames="author_id" DataSourceID="SqlDataSource1" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
                                    <Columns>
                                        <asp:BoundField DataField="author_id" HeaderText="author_id" ReadOnly="True" SortExpression="author_id" />
                                        <asp:BoundField DataField="author_name" HeaderText="author_name" SortExpression="author_name" />
                                    </Columns>
                                    <FooterStyle BackColor="#CCCCCC" />
                                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                                    <RowStyle BackColor="White" />
                                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                    <SortedAscendingHeaderStyle BackColor="#808080" />
                                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                    <SortedDescendingHeaderStyle BackColor="#383838" />
                                </asp:GridView>
                            </div>
                        </div>
                    </div>
                <a href="homepage.aspx"><< Back To Home</a>
            </div>
        </div>
    </div>
</asp:Content>
