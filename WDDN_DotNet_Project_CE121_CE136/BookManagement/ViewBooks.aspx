<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ViewBooks.aspx.cs" Inherits="BookManagement.ViewBooks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
            $(document).ready(function () {
                $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
            });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ebookDBConnectionString3 %>" SelectCommand="SELECT [book_name], [genre], [author_name], [publisher_name], [language], [book_cost], [edition], [book_description] FROM [book_table]"></asp:SqlDataSource>
            <div class="col">
                <asp:GridView class="table table-bordered table-striped" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="book_name" HeaderText="book_name" SortExpression="book_name" />
                        <asp:BoundField DataField="genre" HeaderText="genre" SortExpression="genre" />
                        <asp:BoundField DataField="author_name" HeaderText="author_name" SortExpression="author_name" />
                        <asp:BoundField DataField="publisher_name" HeaderText="publisher_name" SortExpression="publisher_name" />
                        <asp:BoundField DataField="language" HeaderText="language" SortExpression="language" />
                        <asp:BoundField DataField="book_cost" HeaderText="book_cost" SortExpression="book_cost" />
                        <asp:BoundField DataField="edition" HeaderText="edition" SortExpression="edition" />
                        <asp:BoundField DataField="book_description" HeaderText="book_description" SortExpression="book_description" />
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
