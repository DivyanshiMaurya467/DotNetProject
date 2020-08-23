<%@ Page Title="" Language="C#" MasterPageFile="~/DashBoard/AdminMaster.master" AutoEventWireup="true" CodeFile="ViewProfile.aspx.cs" Inherits="DashBoard_ViewProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form runat="server">
        <div class="header">
            <ol class="breadcrumb">
                <li>
                    <a href="AdmnHome.aspx">Admin</a></li>
                <li class="active">View Profile</li>
            </ol>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6"style="margin-left:300px">
                    <div class="form-element-list">
                        <div class="basic-tb-hd">
                            <h2>Admin Profile</h2>
                        </div>
                        <!--end of addproduct-->
                        <!-- Form Examples area start-->

                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" >
                                <div class="form-example-wrap mg-t-30">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4 class="title">Admin Profile Details</h4>
                                        </div>

                                        <br>
                                        <div class="container">
                                            <div class="form-example-int form-horizental">
                                                <div class="form-group">
                                                    <div class="row">
                                                        <div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
                                                            <label class="hrzn-fm">
                                                                <h5>Admin Name:</h5>
                                                            </label>
                                                        </div>
                                                        <div class="col-lg-8 col-md-7 col-sm-7 col-xs-12" style="left: 0px; top: -2px">
                                                            <div class="nk-int-st">
                                                                <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-example-int form-horizental mg-t-15">
                                                <div class="form-group">
                                                    <div class="row">
                                                        <div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
                                                             <label class="hrzn-fm">
                                                                    <h5>Profile Pic:</h5>
                                                                </label>
                                                        </div>
                                                        <div class="col-lg-8 col-md-7 col-sm-7 col-xs-12">
                                                            <div class="nk-int-st">

                                                                <img src="IMG-20181120-WA0024.jpg" style=" border:medium;border-radius:200px/200px;height:130px;width:100px" />

                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="form-example-int form-horizental mg-t-15">
                                                    <div class="form-group">
                                                        <div class="row">
                                                            <div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
                                                                <label class="hrzn-fm">
                                                                    <h5>Email:</h5>
                                                                </label>
                                                            </div>
                                                            <div class="col-lg-8 col-md-7 col-sm-7 col-xs-12" style="left: 0px; top: -2px">
                                                                <div class="nk-int-st">
                                                                    <asp:Literal ID="Literal2" runat="server"></asp:Literal>
                                                                </div>
                                                            </div>

                                                        </div>
                                                    </div>
                                                </div>
                                                

                                                <div class="row">
                                                    
                                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                        <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn notika-btn-amber" Font-Size="15" Height="44px" Width="39%" OnClick="LinkButton1_Click"><i class="fa fa-check"></i>Change Password</asp:LinkButton>
                                                    </div>
                                                </div>
                                                <br>
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

