<%@ Page Title="" Language="C#" MasterPageFile="~/DashBoard/AdminMaster.master" AutoEventWireup="true" CodeFile="ChangePd.aspx.cs" Inherits="DashBoard_ChangePd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form runat="server">
        <div class="header">
            <ol class="breadcrumb">
                <li>
                    <a href="AdmnHome.apsx">Admin</a></li>
                <li class="active">Change Password</li>
            </ol>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="form-element-list">
                        <div class="basic-tb-hd">
                            <h2>Change Password</h2>
                        </div>
                        <!--end of addproduct-->
                        <!-- Form Examples area start-->

                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="form-example-wrap mg-t-30">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4 class="title">Update Password</h4>
                                        </div>
                                        <br>
                                        <div class="container">
                                            <div class="form-example-int form-horizental">
                                                <div class="form-group">
                                                    <div class="row">
                                                        <div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
                                                            <label class="hrzn-fm">
                                                                <h5>New Password:</h5>
                                                            </label>
                                                        </div>
                                                        <div class="col-lg-8 col-md-7 col-sm-7 col-xs-12" style="left: 0px; top: -2px">
                                                            <div class="nk-int-st">
                                                                <asp:TextBox ID="TextBox1" runat="server" class="form-control input-sm"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <br>
                                                    <br>
                                                    <div class="row">
                                                        <div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
                                                            <label class="hrzn-fm">
                                                                <h5>Confirm Password:</h5>
                                                            </label>
                                                        </div>
                                                        <div class="col-lg-8 col-md-7 col-sm-7 col-xs-12" style="left: 0px; top: -2px">
                                                            <div class="nk-int-st">
                                                                <asp:TextBox ID="TextBox2" runat="server" class="form-control input-sm"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-8 col-md-7 col-sm-7 col-xs-12">
                                                <%--<asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Add Product" CssClass="btn-success" Font-Size="15" Height="44px" Width="179px" />--%>
                                                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn notika-add-todo" Font-Size="15" Height="44px" Width="179px" OnClick="LinkButton1_Click"><i class="fa fa-check"></i>Update</asp:LinkButton>
                                            </div>
                                        </div><br>
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

