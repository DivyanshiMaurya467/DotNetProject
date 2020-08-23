<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Billing.aspx.cs" Inherits="check" %>

<!DOCTYPE html>
<html>
<head>
    <title>Virtual Brush : Bill</title>
    <link href="css/bootstrap.css" rel="stylesheet" id="bootstrap-css">
    <script src="js/bootstrap.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</head>
<body>
    <div>
    <div class="container" style="margin-top: 70px">

        <div class="text-center" style="align-content: center; font-family: 'Arial Rounded MT'; color: #6426c8">
            <h2><b><u>VIRTUAL BRUSH</u></b></h2>
        </div></div>
        <br>
        <br>

        <div class="row">
            <div class="container">
                <div>
                    <label for="email">Customer Name :</label>
                    <br />
                    <strong>
                        <asp:Literal ID="Literal1" runat="server"></asp:Literal></strong>
                </div>

                <div    >
                    <label for="email">Date And Time :</label>
                    <br />
                    <strong>
                        <asp:Literal ID="Literal2" runat="server"></asp:Literal></strong>
                </div>
            </div>
        </div>
        <br>
        <br>

        <p class="text-center">
            <em>Receipt No. :&nbsp;<asp:Literal ID="Literal3" runat="server"></asp:Literal></em>
        </p>

        <form runat="server">
            <div class="container text-center">
                <asp:Panel ID="Panel1" runat="server">
                    <div class="col-lg-12">
                        <asp:GridView ID="GridView1" CssClass="table-bordered table" runat="server" AutoGenerateColumns="False">
                            <Columns>

                                <asp:BoundField HeaderText="Product Name" DataField="Pro_Name" ItemStyle-CssClass="text-center" />
                                <asp:BoundField HeaderText="Price" DataField="Price" />

                            </Columns>
                        </asp:GridView>
                    </div>
                    <div class="text-right">
                        <h3>Total Amount to Pay:
                        <asp:Literal ID="Literal5" runat="server"></asp:Literal>/-</h3>
                        <br />
                        <asp:Button CssClass="btn btn-outline-danger" ID="Button1" runat="server" Text="Print Page" OnClientClick="print()" OnClick="Button2_Click" />
                        <asp:Button CssClass="btn btn-outline-success" ID="Button2" runat="server" Text="Homepage" OnClick="Button2_Click" />

                    </div>
                </asp:Panel>
            </div>
        </form>
    </div>
</body>
</html>
