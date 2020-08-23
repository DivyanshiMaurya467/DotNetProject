<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/AdminMaster.master" AutoEventWireup="true" CodeFile="SendNotification.aspx.cs" Inherits="Dashboard_SendNotification" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form runat="server">
        <div class="header">
            <ol class="breadcrumb">
                <li><a href="AdmnHome.aspx">Admin</a></li>
                <li class="active">Send Notification</li>
            </ol>
        </div>
        <div class="container">
            <div id="page-inner">
                <div class="row">
                    <div class="col-xs-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="title">Send New Notification</h4>
                            </div>
                            <div class="panel-body">

                                <div class="form-example-int form-horizental">

                                    <div class="form-group">
                                        <label>Receipent Email</label>
                                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label>Subject :</label>
                                        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label>Message :</label>
                                        <asp:TextBox ID="TextBox3" TextMode="MultiLine" Rows="4" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div>
                                        <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn notika-add-todo" Font-Size="15" Height="44px" Width="230px" OnClick="LinkButton1_Click"><i class="fa fa-send"></i>&nbsp;Send Notification</asp:LinkButton>
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
