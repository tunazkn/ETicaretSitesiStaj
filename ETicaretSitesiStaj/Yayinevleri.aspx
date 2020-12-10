<%@ Page Title="Yayınevleri" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="Yayinevleri.aspx.cs" Inherits="ETicaretSitesiStaj.Yayinevleri" %>

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
            padding: 5px 2px 5px 2px;
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

        .shadowtxt {
            text-shadow: 0px 3px 10px #000000;
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="m-1">
        <div class="container my-4">
            <div class="row">
                <!-- yayınevleri solda liste oldugu kısım-->
                <div class="navbar-nav col-md-2 my-2">
                    <div class="container-fluid shadow-lg filtercerceve bgmyfilter" style="height: auto; word-break: break-word;">
                        <div class="row centerr">
                            <asp:Label CssClass="labeltxtdropSize my-1" ID="lblSearchSabit" runat="server" Text="Yayınevleri" Font-Bold="true" Font-Size="X-Large" Font-Underline="true" Font-Italic="true"></asp:Label>
                            <br />
                            <asp:DataList CssClass="my-3" ID="DataListYayınevliste" runat="server">
                                <ItemTemplate>
                                    <div>
                                        <a href="Yayinevleri.aspx?yev=<%# Eval("Yayineviid") %>">
                                            <asp:Label ID="Label1" CssClass="shadowtxt ml-1" runat="server" Text='<%# Eval("YayineviAdi") %>' Style="font-weight: 600; font-size: 17px; color: black"></asp:Label>
                                        </a>
                                    </div>
                                </ItemTemplate>
                            </asp:DataList>
                            <br />
                        </div>
                    </div>
                </div>
                <!--/yayınevleri solda liste oldugu kısım-->

                <!-- yayınevleri sağda kitapların listelendiği kısım-->
                <div class="navbar navbar-nav navbar-expand-md navbar-dark col-md-10 mb-2 pl-2">
                    <div class="row shadow pl-1 ml-1 bgmyicerik border20p" style="min-height: 800px; width: 937px; border: 2px solid #a1a1a1; word-break: break-all;">
                        <div class="container golgeliKutu3 mr-1 bordertop20" style="height: 60px;">
                            <div class="p-1 mr-auto">
                                <asp:Label ID="lblYayinevlerListesi" runat="server" Style="font-size: x-large; color: black;" Text="Kitapların Listesi"></asp:Label>
                            </div>
                            <div class="ml-auto">
                                <div class="container">
                                    <div class="py-1 ml-auto" style="float: right;">
                                        <asp:Label ID="lblYayinevlerKitapSayisi" runat="server" Text="."></asp:Label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row navbar-expand-md m-2 mt-3" style="min-height: 713px;">
                            <asp:DataList RepeatDirection="Horizontal" RepeatColumns="4" ID="DataListYayinevler" runat="server">
                                <ItemTemplate>
                                    <div class="card m-3 shadowcart hvr-float-shadow" style="width: 195px; height: 320px; text-align: center; align-content: center; word-break: break-word;">
                                        <div>
                                            <a class="hvr-float-shadow" href="KitapDetay.aspx?Kitapid=<%# Eval("Kitapid") %>" title='<%# Eval("KitapAdi") %>'>
                                                <img class="card-img-top shadow" src='<%# Eval("KitapResim") %>' alt="Card image" style="width: 160px; height: 130px;" runat="server" />
                                            </a>
                                        </div>
                                        <div class="card-body" style="word-break: break-word;">
                                            <div class="nav navbar-collapse" id="anaMenu">
                                                <table class="form-signin">
                                                    <tr>
                                                        <td>
                                                            <a class="bk" href="KitapDetay.aspx?Kitapid=<%# Eval("Kitapid") %>" title='<%# Eval("KitapAdi") %>'>
                                                                <asp:Label ID="lblYayinevleriKitapAdi" runat="server" Font-Bold="true" Font-Size="11" Text='<%# Eval("KitapAdi") %>'></asp:Label>
                                                            </a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="lblYayinevleriYazarAdi" runat="server" Font-Size="10" Text='<%# Eval("YazarAdiSoyadi") %>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="lblYayinevleriYayineviAdi" runat="server" Font-Size="10" Text='<%# Eval("YayineviAdi") %>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="lblYayinevleriKitapFiyati" runat="server" Font-Size="11" Text='<%# Eval("KitapFiyat") %>'></asp:Label>
                                                            <asp:Label ID="lblYayinevleriKitapFiyatTL" runat="server" Font-Size="11" Text="TL"></asp:Label>
                                                            | <span class="fas fa-star" style="color: yellow"></span>
                                                            <asp:Label ID="lblYayinevleriKitapPuani" runat="server" Text='<%# Eval("KitapOrtalamaPuani") %>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </div>
                                        <table class="form-signin card-footer fixed-bottom my-1">
                                            <tr>
                                                <td>
                                                    <div class="mt-1">
                                                        <a class="btn btn-outline-info p-1" href="KitapDetay.aspx?Kitapid=<%# Eval("Kitapid") %>" title="Detaylar">&nbsp;Detaylar</a>
                                                        <a class="btn btn-outline-success p-1" href="KitapDetay.aspx?Kitapid=<%# Eval("Kitapid") %>" title="Sepete Ekle">Sepete Ekle&nbsp;</a>
                                                    </div>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </ItemTemplate>
                            </asp:DataList>
                        </div>
                    </div>
                </div>
                <!--/yayınevleri sağda kitapların listelendiği kısım-->
                <div class="clearfix"></div>
            </div>
        </div>
    </section>
</asp:Content>
