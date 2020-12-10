<%@ Page Title="" Language="C#" MasterPageFile="~/User/Kullanici.Master" AutoEventWireup="true" CodeBehind="UFavoriler.aspx.cs" Inherits="ETicaretSitesiStaj.User.UFavoriler" %>

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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="m-1">
        <div class="container my-4 pt-2">
            <div class="row shadow bgmyicerik border20p pb-2" style="border: 2px solid #a1a1a1; min-height: 480px; word-break: break-all;">
                <div class="container">
                    <!-- favori yolu-->
                    <div class="row shadow bordertop20">
                        <div class="row col-md-12 navbar-expand-md ml-2">
                            <div class="row mx-0 my-2" style="word-break: break-word;">
                                <table class="form-signin">
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label1" runat="server" Text="Anasayfa" Font-Bold="true"></asp:Label>&nbsp;>&nbsp;
                                        </td>
                                        <td>
                                            <asp:Label ID="Label3" runat="server" Text="Hesabım" Font-Bold="true"></asp:Label>&nbsp;>&nbsp;
                                        </td>
                                        <td>
                                            <asp:Label ID="lbl" runat="server" Text="Favorilerim" Font-Bold="true"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                    <!-- favori içeriği-->
                    <div class="row col-md-12 navbar-expand-md m-2">
                        <div class="row w-100 my-2">
                            <div class="navbar-nav col-md-12 ml-2">
                                <div class="container-fluid navbar-expand-md my-1 justify-content-center">
                                    <div class="row">
                                        <asp:Label ID="Label2" runat="server" Text="Favorilerim" Font-Size="20" Font-Bold="true"></asp:Label>
                                    </div>
                                </div>
                                <div class="container-fluid navbar-expand-md my-1 mr-0 pr-0 text-right mt-3 ml-auto">
                                    <div class="container ml-auto mr-0 pr-0">
                                        <asp:Label ID="lblfavorikitap" runat="server" Text="Favorilerinizdeki Kitaplar Listelenmektedir."></asp:Label>
                                    </div>
                                </div>
                            </div>
                            <hr class="w-100" />

                            <div class="row navbar-expand-md ml-1 " style="min-height: 485px;">
                                <asp:DataList RepeatDirection="Horizontal" RepeatColumns="5" ID="DataListFavoriler" runat="server">
                                    <ItemTemplate>
                                        <div class="card m-2 shadowcart hvr-float-shadow" style="width: 195px; height: 320px; text-align: center; align-content: center; word-break: break-word;">
                                            <div>
                                                <a class="hvr-float-shadow" href="UKitapDetay.aspx?Kitapid=<%# Eval("Kitapid") %>" title='<%# Eval("KitapAdi") %>'>
                                                    <img class="card-img-top shadow" src='<%# Eval("KitapResim") %>' alt="Card image" style="width: 160px; height: 130px;" runat="server" />
                                                </a>
                                            </div>
                                            <div class="card-body" style="word-break: break-word;">
                                                <div class="nav navbar-collapse  bg-transparent" id="anaMenu">
                                                    <table class="form-signin">
                                                        <tr>
                                                            <td>
                                                                <a class="bk" href="UKitapDetay.aspx?Kitapid=<%# Eval("Kitapid") %>" title='<%# Eval("KitapAdi") %>'>
                                                                    <asp:Label ID="lblTumKitapAdi" runat="server" Font-Bold="true" Font-Size="11" Text='<%# Eval("KitapAdi") %>'></asp:Label>
                                                                </a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:Label ID="lblTumYazarAdi" runat="server" Font-Size="10" Text='<%# Eval("YazarAdiSoyadi") %>'></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:Label ID="lblTumYayineviAdi" runat="server" Font-Size="10" Text='<%# Eval("YayineviAdi") %>'></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:Label ID="lblTumKitapFiyati" runat="server" Font-Size="11" Text='<%# Eval("KitapFiyat") %>'></asp:Label>
                                                                <asp:Label ID="lblTumKitapFiyatTL" runat="server" Font-Size="11" Text="TL"></asp:Label>
                                                                | <span class="fas fa-star" style="color: yellow"></span>
                                                                <asp:Label ID="lblTumKitapPuani" runat="server" Text='<%# Eval("KitapOrtalamaPuani") %>'></asp:Label>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </div>
                                            </div>
                                            <table class="form-signin card-footer fixed-bottom my-1">
                                                <tr>
                                                    <td>
                                                        <div class="mt-1">
                                                            <a class="btn btn-outline-info p-1" href="UKitapDetay.aspx?Kitapid=<%# Eval("Kitapid") %>" title="Detaylar">&nbsp;Detaylar</a>
                                                            <a class="btn btn-outline-success p-1" href="UKitapDetay.aspx?Kitapid=<%# Eval("Kitapid") %>" title="Sepete Ekle">Sepete Ekle&nbsp;</a>
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
                    <!--/kitaplar sağda kitapların listelendiği kısım-->
                    <div class="clearfix"></div>
                </div>
            </div>

        </div>
    </section>
</asp:Content>
