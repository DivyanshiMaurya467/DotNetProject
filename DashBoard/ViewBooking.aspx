<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/AdminMaster.master" AutoEventWireup="true" CodeFile="ViewBooking.aspx.cs" Inherits="Dashboard_ViewBooking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form id="form1" runat="server">
        <div class="header">
            <ol class="breadcrumb">
                <li>
                    <a href="AdmnHome.aspx">Admin</a></li>
                <li class="active">Bookings</li>
            </ol>
        </div>
        <div class="container">
            <div id="page-inner">
                <div class="row">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-example-wrap mg-t-30">

                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        Booking List
                                    </div>
                                    <div class="panel-body">
                                        <div class="panel-body">
                                            <div class="table-responsive">

                                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">

                                                    <thead>
                                                        <tr>
                                                            <th>Name</th>
                                                            <th>Email</th>
                                                            <th>Products</th>
                                                            <th>Price</th>
                                                            <th>Accept</th>
                                                            <th>Reject</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <asp:Repeater ID="Repeater1" runat="server">
                                                            <ItemTemplate>
                                                                <tr>
                                                                    <td><%# Eval("Name") %></td>
                                                                    <td><%# Eval("Email") %></td>
                                                                    <td><%# Eval("Pro_Name") %></td>
                                                                    <td><%# Eval("Price") %></td>
                                                                    <td>
                                                                        <asp:LinkButton CssClass="btn btn-danger" OnClick="linkbutton3_Click" CommandName='<%# Eval("Id") %>' CommandArgument='<%# Eval("Uid") %>' ToolTip="Accept" ID="linkbutton3" runat="server"><i class="fa fa-check"></i></asp:LinkButton>

                                                                    </td>
                                                                    <td>
                                                                        <asp:LinkButton CssClass="btn btn-danger" OnClick="linkbutton1_Click" CommandName='<%# Eval("Id") %>' CommandArgument='<%# Eval("Uid") %>' ToolTip="Reject" ID="linkbutton1" runat="server"><i class="fa fa-close"></i></asp:LinkButton>

                                                                    </td>

                                                                </tr>
                                                            </ItemTemplate>
                                                        </asp:Repeater>

                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</asp:Content>

