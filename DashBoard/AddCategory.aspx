<%@ Page Title="" Language="C#" MasterPageFile="~/DashBoard/AdminMaster.master" AutoEventWireup="true" CodeFile="AddCategory.aspx.cs" Inherits="DashBoard_AddCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form runat="server">
         <div class="header">
            <ol class="breadcrumb">
                <li>
                    <a href="AdmnHome.aspx">Admin</a></li>
                <li class="active">Category</li>
            </ol>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="form-element-list">
                        <div class="basic-tb-hd">
                            <h2>Manage Category</h2>
                        </div>
                        <div class="row">
                            <div class="row">
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="widget-tabs-int">
                                        <div class="widget-tabs-list">
                                            <ul class="nav nav-tabs">
                                                <li class=""><a data-toggle="tab" href="#home" aria-expanded="false">Add</a></li>
                                                <li class="active"><a data-toggle="tab" href="#menu1" aria-expanded="true">Manage</a></li>
                                            </ul>
                                            <div class="tab-content tab-custom-st">
                                                <div id="home" class="tab-pane fade">
                                                    <div class="tab-ctn">
                                                        <div class="panel panel-default">
                                                            <div class="panel-heading">
                                                                <h4 class="title">Add New Category Details</h4>
                                                            </div>
                                                            <div class="panel-body">
                                                                <div class="form-group">
                                                                    <label>Category Name</label>
                                                    <div class="nk-int-st">
                                                                   
                                                                    <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox>
                                                        <small class="text-danger">
                                    <asp:RequiredFieldValidator ID="requiredfieldvalidator1" runat="server" ErrorMessage="Category is required here" ControlToValidate="TextBox1">*</asp:RequiredFieldValidator>
                                </small>

                                                        </div>
                                                                    
                                                                    
                                                                </div>
                                                               
                                                                <asp:Button ID="Button1" runat="server" CssClass="notika-add-todo" OnClick="Button1_Click" Text="Add Category" Height="44px" Font-Size="15"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                     <asp:validationsummary  ID="validationsummary1" runat="server" ShowMessageBox="true" ShowSummary="false"></asp:validationsummary>
                                                </div>
                                               
                                                <div id="menu1" class="tab-pane fade active in">
                                                    <div class="tab-ctn">
                                                        <div class="panel panel-default">
                                                            <div class="panel-heading">
                                                                <h4 class="title">All Category List</h4>
                                                            </div>
                                                            <div class="panel-body">
                                                                <div class="table-responsive table-responsive-data2">
                                                                    <table class="table">
                                                                        <thead>
                                                                            <tr>
                                                                                <th>Category Name</th>
                                                                                <th>Action</th>
                                                                            </tr>
                                                                        </thead>
                                                                        <tbody>
                                                                            <asp:Repeater ID="Repeater1" runat="server">
                                                                                <ItemTemplate>
                                                                                    <tr>
                                                                                        <td><%# Eval("CName") %></td>
                                                                                        <td>
                                                                                            <asp:LinkButton CommandArgument='<%# Eval("id") %>' OnClick="LinkButton1_Click" ID="LinkButton1" CssClass="btn btn-danger" ToolTip="Delete" runat="server"><i class="fa fa-trash"></i></asp:LinkButton>
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

