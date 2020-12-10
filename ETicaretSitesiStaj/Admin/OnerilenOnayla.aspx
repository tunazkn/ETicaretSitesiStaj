<%@ Page Title="Admin - Müşteri Kitapları | Düzenle ve Onayla" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="OnerilenOnayla.aspx.cs" Inherits="ETicaretSitesiStaj.Admin.OnerilenOnayla" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .golgeliKutu2 {
            box-shadow: 0px 0px 15px #c2c2c2;
            width: 250px;
            padding: 5px;
        }

        .golgeliKutu3 {
            box-shadow: 0px 0px 15px #c2c2c2;
        }

        .labeltxtdropSize {
            font-size: 16px;
            Width: 140px;
            Height: 25px;
        }

        .CercevelbltxtSira {
            border: 1px solid #a1a1a1;
            padding: 1px 1px 1px 1px;
            font-size: 16px;
            Width: 160px;
            Height: 30px;
            border-radius: 10px;
            margin: 1px 0px 1px 1px;
        }

        .labeldetailsize {
            width: 215px;
        }

        .divSize {
            font-size: 16px;
        }

        .Cercevelbltxt {
            border: 1px solid #a1a1a1;
            padding: 1px 1px 1px 1px;
            Width: 150px;
            Height: 30px;
            border-radius: 7px;
            margin: 1px;
            float: left;
        }

        .cercevecevre {
            border: 2px solid #a1a1a1;
            padding: 5px 2px 5px 2px;
            background: green;
            width: 13%;
            height: 500px;
            border-radius: 20px;
            color: white;
            margin: 5px;
            float: left;
        }

        .filtercerceve {
            border: 2px solid #a1a1a1;
            padding: 5px 2px 5px 5px;
            border-radius: 20px;
            color: white;
            float: left;
        }

        .cerceve {
            margin: 5px;
            width: 2%;
            border: 2px solid #a1a1a1;
            padding: 4px;
        }

        .btncerceve {
            border: 1px solid #a1a1a1;
            padding: 1px 1px 1px 1px;
            border-radius: 15px;
            margin: 1px;
        }

        .shadowcart {
            box-shadow: 0 5px 12px 0 rgba(0, 0, 0, 0.5);
        }

        .bgmyfilter {
            background-color: #dbd0d0;
        }

        .bgmyicerik {
            background-color: #f6f3f5;
        }

        .bordertop20 {
            border-top-left-radius: 20px;
            border-top-right-radius: 20px;
        }

        .border20p {
            border-radius: 20px 20px;
        }

        .centerr {
            justify-content: center;
            text-align: center;
        }

        .auto-style2 {
            text-align: right;
            width: 350px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="m-1">
        <div class="container my-4">
            <div class="row">
                <div class="navbar navbar-nav navbar-expand-md navbar-dark col-md-12 mb-2">
                    <div class="row shadow ml-1 bgmyicerik border20p w-100" style="min-height: 310px; border: 2px solid #a1a1a1; word-break: break-all;">
                        <div class="row navbar-expand-md m-2 w-100 centerr" style="min-height: 222px; border: 1px solid black;">
                            <div class="navbar-nav shadow col-md-5 m-2 mr-3 py-2">
                                <table class="form-signin">
                                    <tr>
                                        <td style="text-align: right;">Kitabın Adı:</td>
                                        <td>
                                            <asp:TextBox CssClass="form-control mt-2" ID="txtsatkitapadi" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right;">Kitap Fiyat:</td>
                                        <td>
                                            <asp:TextBox CssClass="form-control mt-2" ID="txtkitapsatfiyat" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right;">Resim Yolu:</td>
                                        <td class="mt-2">
                                            <asp:TextBox CssClass="form-control mt-2" ID="txtkitapsatresimyolu" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td class="my-2">
                                            <img class="card-img-top shadow my-2" id="resim" src="/" alt="Card image" style="width: 160px; height: 130px;" runat="server" />
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <div class="navbar-nav shadow col-md-5 m-2 ml-3 py-2">
                                <table class="form-signin">
                                    <tr>
                                        <td style="text-align: right;">Kitapın Açıklaması:</td>
                                        <td>
                                            <asp:TextBox CssClass="form-control mt-2" ID="txtsatkitapaciklama" runat="server" AutoCompleteType="Disabled" TextMode="MultiLine" Height="80"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right;">Kitap Kategorisi:</td>
                                        <td>
                                            <asp:TextBox CssClass="form-control mt-2" ID="txtkitapsatkategori" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right;">Kitap Yazarı:</td>
                                        <td>
                                            <asp:TextBox CssClass="form-control mt-2" ID="txtkitapsatyazar" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right;">Kitap Yayınevi:</td>
                                        <td>
                                            <asp:TextBox CssClass="form-control mt-2" ID="txtkitapsatyayınev" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td>
                                            <asp:Label ID="Label4" runat="server" ForeColor="Transparent" Text="."></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label1" runat="server" ForeColor="Transparent" Text="."></asp:Label></td>
                                        <td>
                                            <asp:TextBox CssClass="form-control mt-2" ID="txtSatkitapid" runat="server" AutoCompleteType="Disabled" Visible="false"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right;">
                                            <asp:Label ID="Label8" runat="server" ForeColor="Transparent" Text=""></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Button CssClass="btn btn-success btn-block text-uppercase" ID="btnAkitaponayla" runat="server" Text="ONAYLA" OnClick="btnAkitaponayla_Click" />
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
