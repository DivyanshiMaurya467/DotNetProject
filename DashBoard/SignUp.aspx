﻿<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.master" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="banner-w3ls-2">
    </div>
    <div class="breadcrumb-agile">
        <ol class="breadcrumb">
            <li class="breadcrumb-item">
                <a href="index.html">Home</a>
            </li>
            <li class="breadcrumb-item active" aria-current="page">Sign Up</li>
        </ol>
    </div>

    <div class="contact py-5">
        <div class="container py-xl-5 py-lg-3">
            <h3 class="title-w3 mb-sm-5 mb-4 text-dark text-center font-weight-bold">Registration</h3>
            <div class="row contact-form">
                <div class="col-lg-6 offset-3 wthree-form-left">
                    <div class="contact-top1">
                        <h1 class="mb-4 text-capitalize text-dark">Fill Your Registration Info</h1>
                        <form runat="server" action="#" method="get" class="contact-wthree">

                            <div class="form-group d-flex">
                                <label>
                                    <i class="fa fa-user" aria-hidden="true"></i>
                                </label>
                                <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Enter Name..." required="" TextMode="singleline"></asp:TextBox>
                            </div>
                            <div class="form-group d-flex">
                                <label>
                                    <i class="fa fa-phone" aria-hidden="true"></i>
                                </label>
                                <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Enter Mobile Number..." required="" TextMode="Phone"></asp:TextBox>
                            </div>

                            <div class="form-group d-flex">
                                <label>
                                    <i class="fa fa-envelope" aria-hidden="true"></i>
                                </label>
                                <asp:TextBox ID="TextBox3" runat="server" class="form-control" placeholder="Enter Email..." required="" TextMode="Email"></asp:TextBox>
                                <small class="text-danger">
                                    <asp:RequiredFieldValidator ID="requiredfieldvalidator2" runat="server" ErrorMessage="email is required here" ControlToValidate="TextBox3">*</asp:RequiredFieldValidator>
                                </small>
                            </div>
                            <div class="form-group d-flex">
                                <label>
                                    <i class="fa fa-lock" aria-hidden="true"></i>
                                </label>
                                <asp:TextBox ID="TextBox4" runat="server" class="form-control" placeholder="Enter Password..." required="" TextMode="password"></asp:TextBox>
                            </div>
                            <div class="form-group d-flex">
                                <label>
                                    <i class="fa fa-lock" aria-hidden="true"></i>
                                </label>
                                <asp:TextBox ID="TextBox5" runat="server" class="form-control" placeholder="Enter Conform Password..." required="" TextMode="password" ValidationGroup="1"></asp:TextBox>
                            </div>
                            <div class="d-flex">
                                <asp:Button ID="Button2" runat="server" Text="Submit" class="btn text-white btn-block btn-primary w-25" OnClick="button1_Click" />
                            </div>
                            <asp:ValidationSummary ID="validationsummary1" runat="server" ShowMessageBox="true" ShowSummary="false" />

                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

