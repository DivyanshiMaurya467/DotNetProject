<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="main-w3pvt">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-6 style-banner">
                    <p class="mt-5">
                        Virtual brush is the platform through which you get all the services you need while you are about to renovate your home.
                    </p>
                    <a href="AboutUs.aspx" class="btn button-style mt-sm-5 mt-4">Read More</a>
                </div>
                <div class="col-lg-6 banner-img">
                </div>
            </div>
        </div>

    </div>
    <div class="blog-w3ls py-5 bg-light border-bottom" id="what">
        <div class="container py-xl-5 py-lg-3">
            <h3 class="title-w3 mb-sm-5 mb-4 text-dark text-center font-weight-bold">What we do</h3>
            <p class="title-para text-center mx-auto     mb-sm-5 mb-4">
                We provide you virtual assistant through which you can paint your home also you can see the available products you need while you are about to paint.
            </p>
            <div class="row package-grids ">
                <div class="col-md-6 blog-w3 my-md-0 my-5 mb-3">
                    <div class="blogs-top ">
                        <img src="images/Intr.jpg" alt="" class="img-fluid" height="250px" width="600px"/>
                    </div>
                    <div class="blogs-bottom p-4 bg-white ">
                        <h4 class="text-dark font-weight-bold">Interior Painting</h4>
                        <a href="Products.aspx?cid=3">
                            <i class="fa fa-line-chart mr-2"></i>Available Products</a>
                    </div>
                </div>
                <div class="col-md-6 blog-w3 my-md-0 my-5 mb-3">
                    <div class="blogs-top">
                        <img src="images/exterior-3.png" alt="" class="img-fluid"height="250px" width="600px" />
                    </div>
                    <div class="blogs-bottom p-4 bg-white">
                        <h4 class="text-dark font-weight-bold">Exterior Painting</h4>
                        <a href="Products.aspx?cid=4">
                            <i class="fa fa-paint-brush mr-2"></i>Available Products</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <section class="banner-bottom-w3layouts py-5" id="services">
        <div class="container py-xl-5 py-lg-3">
            <a href="OurServices.aspx">
                <h3 class="title-w3 mb-sm-5 mb-4 text-dark text-center font-weight-bold">Our Services</h3>
            </a>
            <div class="row pt-sm-4">
                <div class="col-lg-6 about-in text-center">
                    <div class="card">
                        <div class="card-body">
                            <i class="fa fa-paint-brush mb-4" aria-hidden="true"></i>
                            <a href="https://www.visualizecolor.com/ppg#/">
                                <h5 class="card-title mb-3">Virtual Paint Assistant</h5>
                            </a>
                            <p class="card-text">
                                Provide&#39;s user a virtual house on which he can choose and apply different types of color textures and patterns.
                            </p>
                        </div>
                    </div>
                </div>
                
                <div class="col-lg-6 about-in text-center">
                    <div class="card">
                        <div class="card-body">
                            <i class="fa fa-group mb-4" aria-hidden="true"></i>
                            <a href="Login.aspx">
                            <h5 class="card-title mb-3">Online Consultancy</h5>
                            <p class="card-text">
                                Want immediate advice on query related to painting-interact to us
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row mt-lg-4">
                <div class="col-lg-6 about-in mt-lg-4 text-center">
                    <div class="card">
                        <div class="card-body">
                            <i class="fa fa-calculator" aria-hidden="true"></i>
                            <a href="Login.aspx">
                                <h5 class="card-title mb-3">Budget Calculator</h5>
                            </a>
                            <p class="card-text">
                                Calculate&#39;s the budget for renovating your house while providing the best offer of the product to the customer.
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 about-in mt-lg-4 text-center">
                    <div class="card">
                        <div class="card-body">
                            <i class="fa fa-cogs mb-4" aria-hidden="true"></i>
                            <a href="Login.aspx">
                            <h5 class="card-title mb-3">Theme Selection</h5>
                            </a>
                            <p class="card-text">
                                &nbsp;Give&#39;s user some pre designed theme which he can apply to his home and get an idea what the finished look will be.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <div class="middle-w3l pb-5" id="some">
        <div class=" pb-xl-5 pb-lg-3">
            <div class="">
                <div class="left-build-wthree">
                    <h2 class="middle-title-w3 text-dark font-weight-bold">View All Paint Brands Under One Roof</h2>
                    <h6 class="mt-5">You Don't Need To Search Different Brand Of Paints From Several Places All The Products Are Available To You Through Virtual Brush  .</h6>
                    <asp:Repeater ID="Repeater1" runat="server">
                                        <ItemTemplate>
                                            <a class="btn button-style mt-sm-5 mt-4" href="Products.aspx?cid=<%# Eval("Id") %>"><%# Eval("CName") %></a>
                                        </ItemTemplate>
                                    </asp:Repeater>
                    <%--<a href="Products.aspx" class="btn button-style mt-sm-5 mt-4">View Paints</a>--%>
                </div>
                <div class="right-side-img-w3">
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
    <div class="some-another text-center py-5">
        <div class="container py-xl-5 py-lg-3">
            <div class="grid-single bg-white p-sm-5 p-3">
                <h3 class="title-w3 title-w3-2 mb-sm-5 mb-4 text-dark text-center font-weight-bold">Paint Your Home</h3>
                <p class="mb-4 mt-2">
                    Now you can paint your home through virtual assistant through which you can paint your home and see what will it look like apply textures patterns and see the cost for the above work..
                </p>
                <a href="https://www.visualizecolor.com/ppg#/" class="btn button-style mt-sm-4 mt-3">Paint Now</a>
            </div>
        </div>
    </div>
    <div class="join-w3l1 py-5">
        <div class="container py-xl-5 py-lg-3">
            <h3 class="title-w3 title-w3-3 mb-sm-5 mb-4 text-dark text-center font-weight-bold">We Do Great Design For Creative
				Folks.</h3>
            <div class="row join-agile2 text-center pt-md-5 pt-4">
                <div class="col-md-3 steps-reach-w3l">
                    <span class="fa fa-check-square-o" aria-hidden="true"></span>
                    <p class="mt-3">Select Paint</p>
                    <div class="style-agile-border">
                        <img src="images/sty1.png" alt="" />
                    </div>
                </div>
                <div class="col-md-3 steps-reach-w3l my-md-0 my-4">
                    <span class="fa fa-volume-control-phone" aria-hidden="true"></span>
                    <p class="mt-3">Get In Touch</p>
                    <div class="style-agile-border second-border">
                        <img src="images/sty2.png" alt="" />
                    </div>
                </div>
                <div class="col-md-3 steps-reach-w3l">
                    <span class="fa fa-calendar" aria-hidden="true"></span>
                    <p class="mt-3">Choose the Date</p>
                    <div class="style-agile-border">
                        <img src="images/sty1.png" alt="" />
                    </div>
                </div>
                <div class="col-md-3 steps-reach-w3l mt-md-0 mt-4">
                    <span class="fa fa-smile-o" aria-hidden="true"></span>
                    <p class="mt-3">House Painted </p>
                </div>
            </div>
        </div>
    </div>
    <div class="gallery pt-3">
        <div class="container pt-xl-4 pt-lg-4">
            <h3 class="title-w3 mb-sm-5 mb-3 text-dark text-center font-weight-bold">Media & Gallery</h3>
            <p class="title-para text-center mx-auto mb-sm-5 mb-4">These are the different works which we have done in this feild providing full satisfaction to our users. .</p>
            <ul class="demo">

                <li>
                    <div class="gallery-grid1">
                        <a href="Login.aspx">
                            <img src="images/fun-fair-magneeto-themes-500x500.png" alt=" " class="img-fluid" style="height:200px;width:400px" />
                            
                            <div class="p-mask">
                                <h1>Virtual Brush</h1>
                            </div>
                        </a>
                    </div>
                </li>
                <li>
                    <div class="gallery-grid1">
                        <a href="Login.aspx">
                            <img src="images/w.jpg" alt=" " class="img-fluid" style="height:200px;width:400px"  />
                            <div class="p-mask">
                                <h2>Virtual Brush</h2>
                            </div>
                        </a>
                    </div>
                </li>
                <li>
                    <div class="gallery-grid1">
                        <a href="Login.aspx">
                            <img src="images/df-mg4.jpg" alt=" " class="img-fluid"  style="height:200px;width:400px" />
                            <div class="p-mask">
                                <h4>Virtual Brush</h4>
                            </div>
                        </a>
                    </div>
                </li>             
            </ul>
        </div>
    </div>
</asp:Content>

