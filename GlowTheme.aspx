﻿<%@ Page Title="" Language="C#"  AutoEventWireup="true" CodeFile="GlowTheme.aspx.cs" Inherits="GlowTheme" %>

<html lang="zxx">

<head>
    <title>Virual Brush  |Theme Selection::Glow Theme</title>
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
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="https://www.visualizecolor.com/ppg#/">Virtual Paint Assistant</a>
                                    <a class="dropdown-item" href="BudgetCalculator.aspx">Budget Calculator</a>
                                    <a class="dropdown-item" href="ThemeSelection.aspx">Theme Selection</a>
                                   
                                </div>
                            </li>
                            <li class="nav-item dropdown ml-5">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button" data-toggle="dropdown"
                                    aria-haspopup="true" aria-expanded="false">Products
                                </a>
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
                                    <asp:Literal ID="Literal5" runat="server"></asp:Literal>
                                </a>
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

    <form id="form1" runat="server">
        
            <div class="banner-w3ls-2">
                </div>
               <div class="breadcrumb-agile">
        <ol class="breadcrumb">
            <li class="breadcrumb-item">
                <a href="Default.aspx">Home</a>
            </li>
            <li class="breadcrumb-item">
                <a href="ThemeSelection.aspx">Theme Selection</a>
            </li>
            <li class="breadcrumb-item active" aria-current="page">Glow Theme</li>
        </ol>
    </div>
                <h3 class="title-w3 mb-sm-5 mb-4 text-dark text-center font-weight-bold">Related Ceiling Theme To Market</h3>
                <p class="title-para text-center mx-auto mb-sm-5 mb-4">All kids love playing different roles. It could be an astronaut or even a scuba diver. Here's a chance to give them a room that makes them feel like one! The glow wall themes from Virtual Brush is designed to let children bring their world to life, for real.
                </p>
           
       
        <br>
        <br>
        <div class="container">
            <h3><i class="fa fa-arrow-down"></i>&nbsp; Glow Theme</h3>

        </div>
        <br><br>
        <div class="container">

                
            <div class="row package-grids">
                <div class="blog-w3 col-lg-6 mb-3">
                    <div class="blogs-top">
                        <img src="images/asian-paints-lighthouse-island-glow-themes-500x500.png"  style="Height:300px;width:100%"  />
                    </div>
                    <div class="blogs-bottom p-4 bg-white ">
                        <h4 class="text-dark font-weight-bold mb-3">Lighthouse Island</h4>

                    </div>
                </div>
                <div class="blog-w3 col-lg-6 mb-3">
                    <div class="blogs-top">
                        <img src="images/bird-time-stories-n.jpg.image.450.236.medium.jpg" style="Height:300px;width:100%"/>
                    </div>
                    <div class="blogs-bottom p-4 bg-white ">
                        <h4 class="text-dark font-weight-bold mb-3">Bird Time Stories</h4>

                    </div>
                </div>

            </div>
        </div>
    </form>
<footer>
        <div class="w3ls-footer-grids py-4">
            <div class="container py-xl-5 py-lg-3">
                <div class="row">
                    <div class="col-lg-3 w3l-footer-logo text-center">
                        <a class="navbar-brand font-weight-bold" href="Default.aspx">
                            <i class="fa fa-paint-brush mr-2" aria-hidden="true"></i>Virtual Brush
                        </a>
                    </div>
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


