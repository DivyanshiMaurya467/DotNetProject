<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserDefault.aspx.cs" Inherits="User_UserDefault" %>

<!DOCTYPE html>

<html lang="zxx">

<head>
    <title>Virual Brush</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
    <link rel="stylesheet" href="css/font-awesome.css">
    <link href="//fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i&amp;subset=latin-ext"
        rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese"
        rel="stylesheet">
</head>

<body>
    <header>
        <div class="main-top py-1">
            <nav class="navbar navbar-expand-lg navbar-light fixed-navi">
        
                <div class="container-fluid">
                    <a class="navbar-brand font-weight-bold" href="Default.aspx"><i class="fa fa-paint-brush"></i>&nbsp;Virtual Brush
                    </a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse text-center" id="navbarSupportedContent">
                        <ul class="navbar-nav ml-lg-auto">
                            <li class="nav-item">
                                <a class="nav-link" href="Default.aspx">Home
									<span class="sr-only">(current)</span>
                                </a>
                            </li>

                            <li class="nav-item dropdown ml-5">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                                    aria-haspopup="true" aria-expanded="false">Services
                                </a>
                                <br>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="https://www.visualizecolor.com/ppg#/">Virtual Paint Assistant</a>
                                    <a class="dropdown-item" href="BudgetCalculator.aspx">Budget Calculator</a>
                                    <a class="dropdown-item" href="ThemeSelection.aspx">Theme Selection</a>
                                    <a class="dropdown-item" href="#services">Online Consultancy</a>
                                </div>
                            </li>
                            <li class="nav-item dropdown ml-5">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button" data-toggle="dropdown"
                                    aria-haspopup="true" aria-expanded="false">Products
                                </a>
                                <br />
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown1">
                                    <asp:Repeater ID="Repeater1" runat="server">
                                        <ItemTemplate>
                                            <a class="dropdown-item" href="Products.aspx?cid=<%# Eval("Id") %>"><%# Eval("CName") %></a>

                                        </ItemTemplate>
                                    </asp:Repeater>
                                </div>
                            </li>
                            <li class="nav-item mx-xl-5 mx-lg-3 mt-lg-0 mt-3">
                                <a class="nav-link" href="MediaGallery.aspx">Gallery</a>
                            </li>
                            <li class="nav-item mt-lg-0 mt-3">
                                <a class="nav-link" href="Contact.aspx">Get In Touch</a>
                            </li>

                            <li class="nav-item dropdown ml-5">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown2" role="button"
                                    aria-haspopup="true" aria-expanded="false">
                                    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                                    
                                </a>
                                <br>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item " href="Logout.aspx">Logout</a>
                                    <a class="dropdown-item " href="ChangePassword.aspx">Change Password</a>

                                </div>

                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
    </header>
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
            </div>        </div>

    </div>
    <div class="blog-w3ls py-5 bg-light border-bottom" id="what">
        <div class="container py-xl-5 py-lg-3">
            <h3 class="title-w3 mb-sm-5 mb-4 text-dark text-center font-weight-bold">What we do</h3>
            <p class="title-para text-center mx-auto mb-sm-5 mb-4">
                We provide you virtual assistant through which you can paint your home also you can see the available products you need while you are about to paint.
            </p>
            <div class="row package-grids">
                <div class="col-md-6 blog-w3 my-md-0 my-5 mb-3">
                    <div class="blogs-top">
                        <img src="images/Intr.jpg" alt="" class="img-fluid" height="200px" width="600px" />
                    </div>
                    <div class="blogs-bottom p-4 bg-white">
                        <h4 class="text-dark font-weight-bold mb-3">Interior Painting</h4>
                        <a href="Products.aspx?cid=4">
                            <i class="fa fa-line-chart mr-2"></i>Available Products</a>
                       
                    </div>
                </div>
                <div class="col-md-6 blog-w3 my-md-0 my-5 mb-3">
                    <div class="blogs-top">
                        <img src="images/exterior-3.png" alt="" class="img-fluid" height="250px" width="600px" />
                    </div>
                    <div class="blogs-bottom p-4 bg-white">
                        <h4 class="text-dark font-weight-bold mb-3">Exterior Painting</h4>
                        <a href="Products.aspx?cid=3">
                            <i class="fa fa-line-chart mr-2"></i>Available Products</a>
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
                            <a href="OnlineCounsultancy.aspx">
                            <h5 class="card-title mb-3">Online Consultancy</h5>
                                </a>
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
                            <a href="BudgetCalculator.aspx">
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
                            <a href="ThemeSelection.aspx">
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
        <div class="middle-w3l pb-5" id="some">
        <div class=" pb-xl-5 pb-lg-3">
            <div class="">
                <div class="left-build-wthree">
                    <h2 class="middle-title-w3 text-dark font-weight-bold">View All Paint Brands Under One Roof</h2>
                    <h6 class="mt-5">You Don't Need To Search Different Brand Of Paints From Several Places All The Products Are Available To You Through Virtual Brush  .</h6>
                    <asp:Repeater ID="Repeater2" runat="server">
                                        <ItemTemplate>
                                            <a class="btn button-style mt-sm-5 mt-4" href="Products.aspx?cid=<%# Eval("Id") %>"><%# Eval("CName") %></a>
                                        </ItemTemplate>
                                    </asp:Repeater>
                   
                </div>
                <div class="right-side-img-w3">
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
    </section>
    
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
                    <p class="mt-3">Contact Us</p>
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
        <div class="container pt-xl-3 pt-lg-3">
            <h3 class="title-w3 mb-sm-5 mb-3 text-dark text-center font-weight-bold">Media & Gallery</h3>
            <p class="title-para text-center mx-auto mb-sm-5 mb-4">These are the different works which we have done in this feild providing full satisfaction to our users. .</p>
            <ul class="demo">
                <li>
                    <div class="gallery-grid1">
                        <a href="MediaGallery.aspx">
                            <img src="images/df-mg4.jpg" alt=" " class="img-fluid" style="height:200px;width:400px" />
                            <div class="p-mask">
                                <h1>View More</h1>
                            </div>
                        </a>
                    </div>
                </li>
                <li>
                    <div class="gallery-grid1">
                        <a href="MediaGallery.aspx">
                            <img src="images/w.jpg" alt=" " class="img-fluid" style="height:200px;width:400px"/>
                            <div class="p-mask">
                                <h2>View More</h2>
                            </div>
                        </a>
                    </div>
                </li>
                <li>
                    <div class="gallery-grid1">
                        <a href="MediaGallery.aspx">
                            <img src="images/fun-fair-magneeto-themes-500x500.png" alt=" " class="img-fluid" style="height:200px;width:400px"/>
                            <div class="p-mask">
                                <h4>View More</h4>
                            </div>
                        </a>
                    </div>
                </li>
               
            </ul>
        </div>
    </div>    <footer>
        <div class="w3ls-footer-grids py-4">
            <div class="container py-xl-5 py-lg-3">
                <div class="row">
                    <div class="col-lg-3 w3l-footer-logo text-center">
                        <a class="navbar-brand font-weight-bold" href="index.html">
                            <i class="fa fa-paint-brush mr-2" aria-hidden="true"></i>Virtual Brush 
                        </a>
                    </div>
                    <BR>
                    
                    <div class="col-lg-5 w3l-footer text-lg-right text-center mt-3">
                        <ul class="list-unstyled footer-nav-wthree">
                            <li class="mr-4">
                                <a href="Default.aspx" class="active">Home</a>
                            </li>
                            <li class="mr-4">
                                <a class="" href="AboutUs.aspx">About Us</a>
                            </li>
                            <li class="mr-4">
                                <a class="" href="MediaGallery.aspx">Gallery</a>
                            </li>
                            <li>
                                <a class="" href="Contact.aspx">Contact Us</a>
                            </li>
                        </ul>
                    </div>
                    <div class="col-lg-4 w3social-icons text-lg-right text-center mt-lg-0 mt-3">
                        <ul>
                            <li>
                                <a href="https://en-gb.facebook.com/login/" class="rounded-circle" target="_blank">
                                    <i class="fa fa-facebook-f"></i>
                                </a>
                            </li>
                            <li class="px-2">
                                <a href="https://accounts.google.com/ServiceLogin/signinchooser?passive=1209600&continue=https%3A%2F%2Faboutme.google.com%2Fu%2F0%2F%3Freferer%3Dgplus&followup=https%3A%2F%2Faboutme.google.com%2Fu%2F0%2F%3Freferer%3Dgplus&flowName=GlifWebSignIn&flowEntry=ServiceLogin" class="rounded-circle" target="_blank">
                                    <i class="fa fa-google-plus"></i>
                                </a>
                            </li>
                            <li>
                                <a href="https://twitter.com/login?redirect_after_login=https:/developer.twitter.com/en/docs/twitter-for-websites/log-in-with-twitter/login-in-with-twitter.html" class="rounded-circle" target="_blank">
                                    <i class="fa fa-twitter"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="pt-lg-4 pt-3 text-center">
                    <p class="copy-right-grids mt-lg-1">
                        © 2019 Virtual Brush. All Rights Reserved | Design by Divyanshi Maurya
                    </p>
                </div>
            </div>
        </div>
    </footer>
    <script src="js/jquery-2.2.3.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/fixed-nav.js"></script>
    <script>
        $(document).ready(function () {
            $(".dropdown").hover(
                function () {
                    $('.dropdown-menu', this).stop(true, true).slideDown("fast");
                    $(this).toggleClass('open');
                },
                function () {
                    $('.dropdown-menu', this).stop(true, true).slideUp("fast");
                    $(this).toggleClass('open');
                }
            );
        });
    </script>
    <link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
    <script src="js/jquery.magnific-popup.js"></script>
    <script>
        $(document).ready(function () {
            $('.popup-with-zoom-anim').magnificPopup({
                type: 'inline',
                fixedContentPos: false,
                fixedBgPos: true,
                overflowY: 'auto',
                closeBtnInside: true,
                preloader: false,
                midClick: true,
                removalDelay: 300,
                mainClass: 'my-mfp-zoom-in'
            });

        });
    </script>
    <script src="js/SmoothScroll.min.js"></script>
    <script src="js/move-top.js"></script>
    <script src="js/easing.js"></script>
    <script src="js/inside.js"></script>

    <script src="js/bootstrap.js"></script>
</body>
</html>
