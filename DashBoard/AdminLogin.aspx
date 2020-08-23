<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="DashBoard_AdminLogin" %>

<!DOCTYPE html>
<html class="no-js" lang="">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Login Register | VirtualBrush - VirtualBrush Admin Template</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- favicon
		============================================ -->
    <link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
    <!-- Google Fonts
		============================================ -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700,900" rel="stylesheet">
    <!-- Bootstrap CSS
		============================================ -->
    <link rel="stylesheet" href="../DashBoard/css/bootstrap.min.css">
    <!-- font awesome CSS
		============================================ -->
    <link rel="stylesheet" href="../DashBoard/css/font-awesome.min.css">
    <!-- owl.carousel CSS
		============================================ -->
    <link rel="stylesheet" href="../DashBoard/css/owl.carousel.css">
    <link rel="stylesheet" href="../DashBoard/css/owl.theme.css">
    <link rel="stylesheet" href="../DashBoard/css/owl.transitions.css">
    <!-- animate CSS
		============================================ -->
    <link rel="stylesheet" href="../DashBoard/css/animate.css">
    <!-- normalize CSS
		============================================ -->
    <link rel="stylesheet" href="../DashBoard/css/normalize.css">
    <!-- mCustomScrollbar CSS
		============================================ -->
    <link rel="stylesheet" href="../DashBoard/css/scrollbar/jquery.mCustomScrollbar.min.css">
    <!-- wave CSS
		============================================ -->
    <link rel="stylesheet" href="../DashBoard/css/wave/waves.min.css">
    <!-- Notika icon CSS
		============================================ -->
    <link rel="stylesheet" href="../DashBoard/css/notika-custom-icon.css">
    <!-- main CSS
		============================================ -->
    <link rel="stylesheet" href="../DashBoard/css/main.css">
    <!-- style CSS
		============================================ -->
    <link rel="stylesheet" href="../DashBoard/style.css">
    <!-- responsive CSS
		============================================ -->
    <link rel="stylesheet" href="../DashBoard/css/responsive.css">
    <!-- modernizr JS
		============================================ -->
    <script src="js/vendor/modernizr-2.8.3.min.js"></script>
    <style type="text/css">
        .auto-style3 {
            left: -1px;
            top: 0px;
        }
    </style>
</head>

<body>
    
   
    <form  id="form1" runat="server">
        <!-- Login Register area Start-->
        <div class="login-content">
            <!-- Login -->
            <div class="nk-block toggled" id="l-login">
         <h1 style="color:#00ffb9">Admin Login Form</h1>

                <div class="nk-form">
                    <div class="input-group">
                        <span class="input-group-addon nk-ic-st-pro"><i class="notika-icon notika-support"></i></span>
                        <div class="nk-int-st">
                            <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Email"  required=" " TextMode="Email"  > </asp:TextBox>
                               

                        </div>
                    </div>
                    <div class="input-group mg-t-15">
                        <span class="input-group-addon nk-ic-st-pro"><i class="notika-icon notika-edit"></i></span>
                        <div class="nk-int-st">
                           <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Enter Password" required=" " TextMode="Password"></asp:TextBox>
                            
                        </div>
                    </div>
                    <div class="fm-checkbox">
                        <label>
                            <input type="checkbox" class="i-checks">
                            <i></i>Keep me signed in</label>
                    </div>
                    <asp:LinkButton ID="LinkButton1" runat="server" class="btn btn-login btn-success btn-float" OnClick="LinkButton1_Click"><i class="notika-icon notika-right-arrow right-arrow-ant"></i></asp:LinkButton>

                </div>

                <div class="nk-navigation nk-lg-ic">
                    <a href="#" data-ma-action="nk-login-switch" data-ma-block="#l-forget-password"><i>?</i> <span>Forgot Password</span></a>
                </div>
            </div>
            <!-- Forgot Password -->
            <div class="nk-block" id="l-forget-password">
                 <h1 style="color:#00ffb9">Know Your Password</h1>
                <div class="nk-form">
                    <p class="text-left">Enter your registered e-mail.</p>

                    <div class="input-group">
                        <span class="input-group-addon nk-ic-st-pro"><i class="notika-icon notika-mail"></i></span>
                        <div class="nk-int-st">
                            <asp:TextBox ID="TextBox3" runat="server" class="form-control" placeholder="Email" required=" " TextMode="Email"> </asp:TextBox>

                        </div>
                    </div>
                    <asp:LinkButton ID="LinkButton2" runat="server" class="btn btn-login btn-success btn-float" OnClick="LinkButton2_Click"><i class="notika-icon notika-right-arrow right-arrow-ant"></i></asp:LinkButton>

                </div>

                <div class="nk-navigation nk-lg-ic rg-ic-stl">
                    <a href="#" data-ma-action="nk-login-switch" data-ma-block="#l-login"><i class="notika-icon notika-right-arrow"></i><span>Sign in</span></a>
                </div>
            </div>
        </div>
    <!-- Login Register area End-->
    <!-- jquery
		============================================ -->
    <script src="../DashBoard/js/vendor/jquery-1.12.4.min.js"></script>
    <!-- bootstrap JS
		============================================ -->
    <script src="../DashBoard/js/bootstrap.min.js"></script>
    <!-- wow JS
		============================================ -->
    <script src="../DashBoard/js/wow.min.js"></script>
    <!-- price-slider JS
		============================================ -->
    <script src="../DashBoard/js/jquery-price-slider.js"></script>
    <!-- owl.carousel JS
		============================================ -->
    <script src="../DashBoard/js/owl.carousel.min.js"></script>
    <!-- scrollUp JS
		============================================ -->
    <script src="../DashBoard/js/jquery.scrollUp.min.js"></script>
    <!-- meanmenu JS
		============================================ -->
    <script src="../DashBoard/js/meanmenu/jquery.meanmenu.js"></script>
    <!-- counterup JS
		============================================ -->
    <script src="../DashBoard/js/counterup/jquery.counterup.min.js"></script>
    <script src="../DashBoard/js/counterup/waypoints.min.js"></script>
    <script src="../DashBoard/js/counterup/counterup-active.js"></script>
    <!-- mCustomScrollbar JS
		============================================ -->
    <script src="../DashBoard/js/scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
    <!-- sparkline JS
		============================================ -->
    <script src="../DashBoard/js/sparkline/jquery.sparkline.min.js"></script>
    <script src="../DashBoard/js/sparkline/sparkline-active.js"></script>
    <!-- flot JS
		============================================ -->
    <script src="../DashBoard/js/flot/jquery.flot.js"></script>
    <script src="../DashBoard/js/flot/jquery.flot.resize.js"></script>
    <script src="../DashBoard/js/flot/flot-active.js"></script>
    <!-- knob JS
		============================================ -->
    <script src="../DashBoard/js/knob/jquery.knob.js"></script>
    <script src="../DashBoard/js/knob/jquery.appear.js"></script>
    <script src="../DashBoard/js/knob/knob-active.js"></script>
    <!--  Chat JS
		============================================ -->
    <script src="../DashBoard/js/chat/jquery.chat.js"></script>
    <!--  wave JS
		============================================ -->
    <script src="../DashBoard/js/wave/waves.min.js"></script>
    <script src="../DashBoard/js/wave/wave-active.js"></script>
    <!-- icheck JS
		============================================ -->
    <script src="../DashBoard/js/icheck/icheck.min.js"></script>
    <script src="../DashBoard/js/icheck/icheck-active.js"></script>
    <!--  todo JS
		============================================ -->
    <script src="../DashBoard/js/todo/jquery.todo.js"></script>
    <!-- Login JS
		============================================ -->
    <script src="../DashBoard/js/login/login-action.js"></script>
    <!-- plugins JS
		============================================ -->
    <script src="../DashBoard/js/plugins.js"></script>
    <!-- main JS
		============================================ -->
    <script src="../DashBoard/js/main.js"></script>

    </form>
    </body>

</html>


