<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.master" AutoEventWireup="true" CodeFile="ForgotPassword.aspx.cs" Inherits="ForgotPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="banner-w3ls-2">
    </div>
    <div class="breadcrumb-agile">
        <ol class="breadcrumb">
            <li class="breadcrumb-item">
                <a href="Default.aspx">Home</a>
            </li>
            <li class="breadcrumb-item active" aria-current="page">Forget Password</li>
        </ol>
    </div>
    <div class="contact py-5">
        <div class="container py-xl-5 py-lg-3">
            <h3 class="title-w3 mb-sm-5 mb-4 text-dark text-center font-weight-bold">Know Your Password</h3>
            <div class="row contact-form">
                <div class="col-lg-7 wthree-form-left">
                    <div class="contact-top1">
                        <h1 class="mb-4 text-capitalize text-dark">Enter Your Registered Email</h1>
                        <form runat="server" action="#" method="get" class="contact-wthree">

                            <div class="form-group d-flex">
                                <label>
                                    <i class="fa fa-envelope" aria-hidden="true"></i>
                                </label>
                                <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Enter Email..." required="" TextMode="Email"></asp:TextBox>
                                <small class="text-danger">
                                    <asp:RegularExpressionValidator ID="regularexpressionvalidator1" runat="server" ErrorMessage="invalid email" ControlToValidate="textbox1" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="dynamic" SetFocusOnError="true">*</asp:RegularExpressionValidator>
                                    <asp:RequiredFieldValidator ID="requiredfieldvalidator2" runat="server" ErrorMessage="email is required here" ControlToValidate="textbox1">*</asp:RequiredFieldValidator>
                                </small>
                            </div>
                            
                            <div class="d-flex">
                                <asp:Button ID="Button2" runat="server" Text="Submit" class="btn text-white btn-block btn-primary w-25" OnClick="Button2_Click" Width="100px"  />
                            </div>
                            <asp:ValidationSummary ID="validationsummary1" runat="server" ShowMessageBox="true" ShowSummary="false" />
                            <asp:Label ID="Label1" runat="server"></asp:Label>
                        </form>
                    </div>
                </div>
                <div class="col-lg-5 wthree-form-right">
                    <img src="images/forget.jpg" style="height:200px;width:350px"/>
                    </div>

            </div>
        </div>
    </div>

</asp:Content>

