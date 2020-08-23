<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/AdminMaster.master" AutoEventWireup="true" CodeFile="AddProduct.aspx.cs" Inherits="Dashboard_AddProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form runat="server">
        <div class="header">
            <ol class="breadcrumb">
                <li>
                    <a href="AdmnHome.apsx">Admin</a></li>
                <li class="active">Products</li>
            </ol>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="form-element-list">
                        <div class="basic-tb-hd">
                            <h2>Add Product</h2>
                        </div>
                        <!--end of addproduct-->
                        <!-- Form Examples area start-->
                       
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="form-example-wrap mg-t-30">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                                                <h4 class="title">Add New Product</h4>
                                                            </div>
                                      <br>
                                        <div class="container">
                                    <div class="form-example-int form-horizental">
                                        <div class="form-group">
                                            <div class="row">
                                                <div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
                                                    <label class="hrzn-fm">
                                                        <h5>Product Name:</h5>
                                                    </label>
                                                </div>
                                                <div class="col-lg-8 col-md-7 col-sm-7 col-xs-12" style="left: 0px; top: -2px">
                                                    <div class="nk-int-st">
                                                        <asp:TextBox ID="TextBox1" runat="server" class="form-control input-sm"></asp:TextBox>
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
                                                        <h5>Pic:</h5>
                                                    </label>
                                                </div>
                                                <div class="col-lg-8 col-md-7 col-sm-7 col-xs-12">
                                                    <div class="nk-int-st">

                                                        <asp:FileUpload ID="FileUpload1" runat="server" class="form-control input-sm" />

                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="form-example-int form-horizental mg-t-15">
                                            <div class="form-group">
                                                <div class="row">
                                                    <div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
                                                        <label class="hrzn-fm">
                                                            <h5>Category:</h5>
                                                        </label>
                                                    </div>
                                                    <div class="col-lg-8 col-md-7 col-sm-7 col-xs-12">
                                                        <div class="nk-int-st">

                                                            <asp:DropDownList ID="DropDownList1" runat="server" class="form-control input-sm">
                                                               <%-- <asp:ListItem>Choose Category</asp:ListItem>
                                                                <asp:ListItem>Theme</asp:ListItem>
                                                                <asp:ListItem>Paints</asp:ListItem>
                                                                <asp:ListItem>Wallpaper</asp:ListItem>--%>
                                                            </asp:DropDownList>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-example-int form-horizental mg-t-15">
                                                <div class="form-group">
                                                    <div class="row">
                                                        <div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
                                                            <label class="hrzn-fm">
                                                                <h5>Company Name:</h5>
                                                            </label>
                                                        </div>
                                                        <div class="col-lg-8 col-md-7 col-sm-7 col-xs-12">
                                                            <div class="nk-int-st">
                                                                <asp:TextBox ID="TextBox2" runat="server" class="form-control input-sm"></asp:TextBox>

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
                                                                <h5>Price:</h5>
                                                            </label>
                                                        </div>
                                                        <div class="col-lg-8 col-md-7 col-sm-7 col-xs-12">
                                                            <div class="nk-int-st">
                                                                <asp:TextBox ID="TextBox4" runat="server" class="form-control input-sm"></asp:TextBox>

                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                           
                                                <div class="row">
                                                    <div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
                                                            
                                                        </div>
                                                    <div class="col-lg-8 col-md-7 col-sm-7 col-xs-12">
                                                        <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn notika-add-todo" Font-Size="15" Height="44px" Width="179px" OnClick="LinkButton1_Click"><i class="fa fa-check"></i>Add Product</asp:LinkButton>
                                                        </div>                                                  
                                                </div><br>
                                          
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

