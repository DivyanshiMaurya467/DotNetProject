<%@ Page Title="" Language="C#" MasterPageFile="~/DashBoard/AdminMaster.master" AutoEventWireup="true" CodeFile="AdmnHome.aspx.cs" Inherits="DashBoard_AdmnHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="notika-status-area">
        <div class="container">
            <div class="row">
                <a href="ViewUsers.aspx">
                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12 animated zoomIn">
                        <div class="wb-traffic-inner notika-shadow sm-res-mg-t-30 tb-res-mg-t-30">
                            <div class="website-traffic-ctn">
                                <h2><span class="counter">
                                    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                                </span></h2>
                                <p>Total Users</p>
                            </div>
                            <div class="fa fa-users fa-3x text-dark" style="margin-left: 80px"></div>

                        </div>
                    </div>
                </a>
                <a href="ManagePro.aspx">
                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12 animated zoomIn">
                        <div class="wb-traffic-inner notika-shadow sm-res-mg-t-30 tb-res-mg-t-30">
                            <div class="website-traffic-ctn">
                                <h2><span class="counter">
                                    <asp:Literal ID="Literal2" runat="server"></asp:Literal>
                                </span></h2>
                                <p>Total Product</p>
                            </div>

                            <div class="fa fa-taskS fa-3x text-dark" style="margin-left: 80px"></div>

                        </div>
                    </div>
                </a>
                <a href="AViewReview.aspx">
                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12 animated zoomIn">
                        <div class="wb-traffic-inner notika-shadow sm-res-mg-t-30 tb-res-mg-t-30 dk-res-mg-t-30">
                            <div class="website-traffic-ctn">
                                <h2><span class="counter">
                                    <asp:Literal ID="Literal3" runat="server"></asp:Literal>

                                </span></h2>
                                <p>Total Reviews</p>
                            </div>
                            <div class="fa fa-comments-o fa-3x text-dark" style="margin-left: 80px"></div>

                        </div>
                    </div>
                </a>
                <a href="BookingList.aspx">
                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12 animated zoomIn">
                        <div class="wb-traffic-inner notika-shadow sm-res-mg-t-30 tb-res-mg-t-30 dk-res-mg-t-30">
                            <div class="website-traffic-ctn">
                                <h2><span class="counter">
                                    <asp:Literal ID="Literal4" runat="server"></asp:Literal>

                                </span></h2>
                                <p>Total Bookings</p>
                            </div>
                            <div class="fa fa-gift fa-3x text-dark" style="margin-left: 80px"></div>

                        </div>
                    </div>
                </a>
            </div>
        </div>
    </div>
    <br />
    <div class="notika-email-post-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 animated zoomIn">
                    <div class="email-statis-inner notika-shadow">
                        <div class="email-ctn-round">
                            <div class="email-rdn-hd">
                                <h2>Statistics</h2>
                            </div>
                            <div class="email-statis-wrap">
                                <div class="email-round-nock">
                                    <input type="text" class="knob" value="0" data-rel="<%=a%>" data-linecap="round" data-width="130" data-bgcolor="#E4E4E4" data-fgcolor="#00c292" data-thickness=".10" data-readonly="true">
                                </div>
                                <div class="email-ctn-nock">
                                    <p>Total Users</p>
                                </div>
                            </div>
                            <div class="email-round-gp">
                                <div class="email-round-pro">
                                    <div class="email-signle-gp">
                                        <input type="text" class="knob" value="0" data-rel="<%=b%>" data-linecap="round" data-width="90" data-bgcolor="#E4E4E4" data-fgcolor="#00c292" data-thickness=".10" data-readonly="true" disabled>
                                    </div>
                                    <div class="email-ctn-nock">
                                        <p>Total Products</p>
                                    </div>
                                </div>
                                <div class="email-round-pro">
                                    <div class="email-signle-gp">
                                        <input type="text" class="knob" value="0" data-rel="<%=c1%>" data-linecap="round" data-width="90" data-bgcolor="#E4E4E4" data-fgcolor="#00c292" data-thickness=".10" data-readonly="true" disabled>
                                    </div>
                                    <div class="email-ctn-nock">
                                        <p>Total Reviews</p>
                                    </div>
                                </div>
                                <div class="email-round-pro sm-res-ds-n lg-res-mg-bl">
                                    <div class="email-signle-gp">
                                        <input type="text" class="knob" value="0" data-rel="<%=d%>" data-linecap="round" data-width="90" data-bgcolor="#E4E4E4" data-fgcolor="#00c292" data-thickness=".10" data-readonly="true" disabled>
                                    </div>
                                    <div class="email-ctn-nock">
                                        <p>Total Booking</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 animated zoomIn">
                    <div class="recent-items-wp notika-shadow sm-res-mg-t-30">
                        <div class="rc-it-ltd">
                            <div class="recent-items-ctn">
                                <div class="recent-items-title">
                                    <h2>Reviews and Feedbacks</h2>
                                </div>
                            </div>
                            <div class="recent-items-inn">
                                <table class="table table-inner table-vmiddle">
                                    <thead>
                                        <tr>
                                        <tr>
                                            <th>Name</th>
                                            <th>Message</th>
                                            <th>View</th>

                                        </tr>
                                    </thead>
                                    <tbody>
                                        <asp:Repeater ID="Repeater1" runat="server">
                                            <ItemTemplate>
                                                <tr>
                                                    <td><%# Eval("Name") %>
                                                            
                                                    </td>


                                                    <td><%# Eval("Message") %>
                                                            
                                                    </td>


                                                    <td>
                                                        <a href="AViewReview.aspx" title="View" style="color: black"><i class="fa fa-eye"></i></a>
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
</asp:Content>

