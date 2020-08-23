<%@ Page Title="" Language="C#" MasterPageFile="~/DashBoard/AdminMaster.master" AutoEventWireup="true" CodeFile="ManagePro.aspx.cs" Inherits="DashBoard_ManagePro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <form runat="server">
        <div class="header">
            <ol class="breadcrumb">
                <li>
                    <a href="AdmnHome.aspx">Admin</a></li>
                <li class="active">Product</li>
            </ol>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="form-element-list">
                        <div class="basic-tb-hd">
                            <h2>Manage Product</h2>
                        </div>
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="form-example-wrap mg-t-30">
                                    <div class="cmp-tb-hd cmp-int-hd">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h4 class="title">All  Product List</h4>
                                            </div>
                                            <br>
                                            <br>
                                            <br>
                                            <div class="card-body">

                                                <asp:multiview id="MultiView1" runat="server">
                                                    <asp:View ID="View1" runat="server">
                                                        <div class="table-responsive">
                                                            <table class="table table-bordered table-hover" id="dataTable" width="100%" cellspacing="0">
                                                                <thead>
                                                                    <tr>
                                                                        <th>Product</th>
                                                                        <th>Name</th>
                                                                        <th>Category ID</th>
                                                                        <th>Company Name</th>
                                                                        <th>Price</th>
                                                                        <th>Action</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <asp:Repeater ID="Repeater1" runat="server">
                                                                        <ItemTemplate>
                                                                            <tr>
                                                                                <td>
                                                                                    <img src='<%# Eval("Pro_Pic") %>' class="img-fluid" height="30" width="30" />
                                                                                </td>
                                                                                <td><%# Eval("Pro_Name") %></td>
                                                                                <td><%# Eval("Pro_Category") %></td>
                                                                                <td><%# Eval("Co_Name") %></td>
                                                                                <td><%# Eval("Price") %></td>

                                                                                <td>
                                                                                    <asp:LinkButton OnClick="LinkButton1_Click" CssClass="btn btn-primary btn-circle" CommandArgument='<%# Eval("Id") %>' ToolTip="Edit" ID="LinkButton1" runat="server"><i class="fa fa-edit"></i></asp:LinkButton>
                                                                                    <asp:LinkButton OnClick="LinkButton2_Click" CssClass="btn btn-success btn-circle" CommandArgument='<%# Eval("Id") %>' ToolTip="View" ID="LinkButton2" runat="server"><i class="fa fa-eye"></i></asp:LinkButton>
                                                                                    <asp:LinkButton OnClick="LinkButton3_Click" CssClass="btn btn-danger btn-circle" CommandArgument='<%# Eval("Id") %>' ToolTip="Delete" ID="LinkButton3" runat="server"><i class="fa fa-trash"></i></asp:LinkButton>

                                                                                </td>

                                                                            </tr>
                                                                        </ItemTemplate>
                                                                    </asp:Repeater>

                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </asp:View>
                                                    <asp:View ID="View2" runat="server">
                                                        <div class="row">
                                                            <div class="col-lg-4">
                                                                <div class="form-group">
                                                                    <label>Product Name</label>
                                                                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Product"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-4">
                                                                <div class="form-group">
                                                                    <label>Company Name</label>
                                                                    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Company Name"></asp:TextBox>
                                                                </div>
                                                            </div>

                                                            <div class="col-lg-4">
                                                                <div class="form-group">
                                                                    <label>Product Category</label>
                                                                    <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" placeholder="Category"></asp:TextBox>
                                                                </div>
                                                            </div>

                                                            <div class="col-lg-4">
                                                                <div class="form-group">
                                                                    <label>Price</label>
                                                                    <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" placeholder="Category"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                           
                                                           
                                                            <div class="col-lg-12">
                                                                <div class="form-group">
                                                                    <label>Upload Pic</label>
                                                                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <asp:LinkButton ID="LinkButton5" runat="server" CssClass="btn btn-primary btn-icon-split" OnClick="LinkButton5_Click">
                        <span class="icon text-white-50">
                            <i class="fa fa-check"></i>
                        </span>
                        <span class="text">Update Info</span>
                                                        </asp:LinkButton>

                                                        <asp:LinkButton ID="LinkButton4" runat="server" CssClass="btn btn-warning btn-icon-split" OnClick="LinkButton4_Click">
                        <span class="icon text-white-50">
                            <i class="fa fa-backward"></i>
                        </span>
                        <span class="text">Back To List</span>
                                                        </asp:LinkButton>

                                                    </asp:View>
                                                    <asp:View ID="View3" runat="server">
                                                        <div class="row">
                                                            <div class="col-lg-4">
                                                                <ul class="list-group">
                                                                    <li class="list-group-item text-center">
                                                                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Pic") %>' CssClass="img-fluid" />
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                            <div class="col-lg-8">
                                                                <ul class="list-group">
                                                                    <li class="list-group-item"><b>Product Name&nbsp;:&nbsp;</b><asp:Literal ID="Literal1" runat="server"></asp:Literal></li>
                                                                    <li class="list-group-item"><b>Company Name&nbsp;:&nbsp;</b><asp:Literal ID="Literal2" runat="server"></asp:Literal></li>
                                                                    <li class="list-group-item"><b>Product Category&nbsp;:&nbsp;</b><asp:Literal ID="Literal3" runat="server"></asp:Literal></li>
                                                                    <li class="list-group-item"><b>Price&nbsp;:&nbsp;</b><asp:Literal ID="Literal4" runat="server"></asp:Literal></li>

                                                                    <li class="list-group-item">
                                                                        <asp:LinkButton ID="LinkButton6" runat="server" CssClass="btn btn-warning btn-icon-split" OnClick="LinkButton4_Click">
                        <span class="icon text-white-50">
                            <i class="fa fa-backward"></i>
                        </span>
                        <span class="text">Back To List</span>
                                                                        </asp:LinkButton>
                                                                    </li>
                                                                </ul>
                                                            </div>

                                                        </div>
                                                    </asp:View>
                                                    <asp:View ID="View4" runat="server">
                                                        <div class="row">
                                                            <div class="col-lg-6">
                                                                <ul class="list-group">
                                                                    <li class="list-group-item">

                                                                        <i class="fa fa-exclamation-triangle text-danger fa-2x "></i>&nbsp;Are Your Sure To Delete This Product?

                                                                    </li>

                                                                    <li class="list-group-item text-center">
                                                                        <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("Pic") %>' CssClass="img-fluid" />
                                                                    </li>
                                                                    <li class="list-group-item"><b>Product Name&nbsp;:&nbsp;</b><asp:Literal ID="Literal5" runat="server"></asp:Literal></li>
                                                                    <li class="list-group-item">
                                                                        <asp:LinkButton ID="LinkButton8" runat="server" CssClass="btn btn-danger btn-icon-split" OnClick="LinkButton8_Click">
                        <span class="icon text-white-50">
                            <i class="fa fa-trash"></i>
                        </span>
                        <span class="text">Delete</span>
                                                                        </asp:LinkButton>


                                                                        <asp:LinkButton ID="LinkButton7" runat="server" CssClass="btn btn-warning btn-icon-split" OnClick="LinkButton4_Click">
                        <span class="icon text-white-50">
                            <i class="fa fa-backward"></i>
                        </span>
                        <span class="text">Back To List</span>
                                                                        </asp:LinkButton>
                                                                    </li>
                                                                </ul>
                                                            </div>

                                                        </div>
                                                    </asp:View>
                                                </asp:multiview>
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

