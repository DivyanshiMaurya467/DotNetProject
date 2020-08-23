<%@ Page Title="" Language="C#" MasterPageFile="~/DashBoard/AdminMaster.master" AutoEventWireup="true" CodeFile="BookingList.aspx.cs" Inherits="DashBoard_BookingList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form runat="server">
        <div class="header">
            <ol class="breadcrumb">
                <li>
                    <a href="AdmnHome.aspx">Admin</a></li>
                <li class="active">Total Bookings</li>
            </ol>
        </div>
        <div class="container">
            <div id="page-inner">
                <div class="row">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    Total Booking List
                                </div>
                                    <div class="form-example-int form-horizental">

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
    </form>
</asp:Content>

