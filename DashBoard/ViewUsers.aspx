<%@ Page Title="" Language="C#" MasterPageFile="~/DashBoard/AdminMaster.master" AutoEventWireup="true" CodeFile="ViewUsers.aspx.cs" Inherits="DashBoard_ViewUsers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <div class="header">
            <ol class="breadcrumb">
                <li>
                    <a href="AdmnHome.aspx">Admin</a></li>
                <li class="active">Total Users</li>
            </ol>
        </div>
        <div class="container">
            <div id="page-inner">
                <div class="row">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="panel panel-default">
                                <div class="panel-heading"> 
                                    Total Users List
                                </div>
                                <div class="panel-body">
                                    <div class="panel-body">
                                        <table class="table table-striped table-bordered table-hover" id="dataTables-example">

                                            <thead>
                                                <tr>
                                                    <th>Name</th>
                                                    <th>Email</th>
                                                    <th>Mobile Number</th>
                                                   

                                                </tr>
                                            </thead>
                                            <tbody>
                                                <asp:Repeater ID="Repeater1" runat="server">
                                                    <ItemTemplate>
                                                        <tr>
                                                            <td><%# Eval("Name") %></td>
                                                            <td><%# Eval("Email") %></td>
                                                            <td><%# Eval("MobNo") %></td>
                                                            
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
    </form>
</asp:Content>

