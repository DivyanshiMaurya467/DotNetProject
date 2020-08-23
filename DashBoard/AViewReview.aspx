<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/AdminMaster.master" AutoEventWireup="true" CodeFile="AViewReview.aspx.cs" Inherits="Dashboard_AViewReview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form id="form1" runat="server">
        <div class="header">
            <ol class="breadcrumb">
                <li>
                    <a href="#">Admin</a></li>
                <li class="active">Review</li>
            </ol>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="form-element-list">
                        <div class="basic-tb-hd">
                            <h2>Reviews</h2>
                        </div>
                        <div id="page-inner">
                            <div class="row">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h5>All Reviews List</h5>
                                            </div>
                                            <div class="panel-body">
                                                <div class="panel-body">
                                                    <div class="table-responsive">

                                                        <table class="table table-striped table-bordered table-hover" id="dataTables-example">

                                                            <thead>
                                                                <tr>
                                                                    <th>Name</th>
                                                                    <th>Email</th>
                                                                    <th>Subject</th>
                                                                    <th>Message</th>
                                                                    <th>Action</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <asp:Repeater ID="Repeater1" runat="server">
                                                                    <ItemTemplate>
                                                                        <tr>
                                                                            <td><%# Eval("Name") %></td>
                                                                            <td><%# Eval("Email") %></td>
                                                                            <td><%# Eval("Subject") %></td>
                                                                            <td><%# Eval("Message") %></td>
                                                                            <td>
                                                                                <asp:LinkButton OnClick="LinkButton3_Click" CssClass="btn btn-danger" CommandArgument='<%# Eval("Id") %>' ToolTip="Delete" ID="LinkButton3" runat="server"><i class="fa fa-trash"></i></asp:LinkButton>

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
            </div>
        </div>
    </form>
</asp:Content>


