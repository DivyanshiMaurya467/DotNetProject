<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.master" AutoEventWireup="true" CodeFile="RateReview.aspx.cs" Inherits="RateReview" %>
7
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp"%>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="banner-w3ls-2">
    </div>
    <div class="breadcrumb-agile">
        <ol class="breadcrumb">
            <li class="breadcrumb-item">
                <a href="index.html">Home</a>
            </li>
            <li class="breadcrumb-item active" aria-current="page">Rate & Review</li>
        </ol>
    </div>
    <form id="form1" runat="server">
        <div class="container">
            <div class="col-lg-6 m-auto">
                <div class="card border-dark">
                    <div class="card-header bg-dark text-white">
                        <h5 class="text-center">Rate & Review</h5>
                    </div>
                        <div class="form-group">
                            <label>Choose Product :</label>
                            <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
                        </div>
                        <div class="form-group">
                            <label>Name:</label>
                            <asp:TextBox ID="textbox1" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                      <div class="form-group">
                            <label>Rate:</label>

                        </div><div class="form-group">
                            <label>Review:</label>
                            <asp:TextBox ID="textbox3" runat="server" CssClass="form-control" Rows="10" TextMode="MultiLine"></asp:TextBox>
                        </div>
                        <asp:Button ID="button1" runat="server" Text="Submit" CssClass="btn btn-dark" OnClick="button1_Click"/>
                    </div>
                </div>
            </div>
        </div>
        <asp:ValidationSummary ID="validationsummary1" runat="server" ShowMessageBox="true" ShowSummary="false" />
    </form>
</asp:Content>

