<%@ Page Title="Anasayfa" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="Anasayfa.aspx.cs" Inherits="ETicaretSitesiStaj.Anasayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        div#amazingslider-1 a {
        }
            /*slider içindeki detay butonu havaya kalkıyor*/
            div#amazingslider-1 a:hover {
                transition: 0.5s !important;
            }

        .shadow {
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
        }

        .shadow2 {
            box-shadow: 0 4px 15px 0 rgba(0, 0, 0, 0.5);
        }

        .golgeliKutu {
            box-shadow: 0px 0px 15px #c2c2c2;
            width: 200px;
            padding: 5px;
            font: 12px Arial, Helvetica, sans-serif;
        }

        .golgeliKutu2 {
            box-shadow: 0px 0px 15px #c2c2c2;
            width: 250px;
            padding: 5px;
        }

        .filtercerceve0 {
            border: 2px solid #a1a1a1;
            padding: 5px 2px 5px 2px;
            border-radius: 20px;
            float: left;
        }

        .baslikcerceve {
            border: 1px solid #a1a1a1;
            padding: 5px 2px 5px 10px;
            border-radius: 20px;
            margin: 0 0 0 5px;
            float: left;
        }

        .shadowcart {
            box-shadow: 0 5px 12px 0 rgba(0, 0, 0, 0.5);
        }

        .bgmy {
            background-color: #f5f5f5; /*e9dede;*/
        }

        .bgmyfilter {
            background-color: #dbd0d0;
        }

        .bgmyicerik {
            background-color: #f6f3f5;
        }

        .shadowtxt {
            text-shadow: 0px 3px 10px #000000;
        }

        .border20p {
            border-radius: 20px 20px;
        }

        hr {
            color: black;
        }
    </style>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!--Javascipts-->
    <script src="Scripts/jquery-3.5.1.js"></script>
    <script src="Scripts/jquery-3.5.1.min.js"></script>
    <script src="Scripts/popper.min.js"></script>
    <script src="Scripts/bootstrap.min.js" defer></script>
    <script src="bootstrap/js/solid.min.js" defer></script>
    <script src="bootstrap/js/fontawesome.min.js" defer></script>
    <!--CSS-->
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="bootstrap/css/fontawesome.min.css" rel="stylesheet" />
    <link href="bootstrap/css/solid.min.css" rel="stylesheet" />
    <!--<link href="bootstrap/css/style.css" rel="stylesheet" />-->
    <link href="../MyStyles.css" rel="stylesheet" />
    <link href="MyStyles.css" rel="stylesheet" />
    <link href="Styles2.css" rel="stylesheet" />

    <!-- Slider için gerekli kodlar-->
    <meta http-equiv="content-type" content="text/html;charset=utf-8" />
    <script src="slidersJS/jquery.js"></script>
    <script src="slidersJS/amazingslider.js"></script>
    <link rel="stylesheet" type="text/css" href="slidersJS/amazingslider-1.css">
    <script src="slidersJS/initslider-1.js"></script>
    <!--/Slider için gerekli kodlar-->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--file:///C:/Users/90538/Desktop/templates/Shop%20Cart/shop-cart/compair.html-->
    <div class="row m-1">
        <div class="container my-4">
            <!-- Anasayfadaki slider section-->
            <section class="mb-5">
                <div id="amazingslider-wrapper-1" style="display: block; position: relative; max-width: 900px; margin: 0px auto 0px;">
                    <div class="amazingslider" id="amazingslider-1" style="display: block; position: relative; margin: 0 auto;">
                        <ul class="amazingslider-slides" style="display: none;">
                            <li>
                                <img src="imagesslide/birnefesgibi.png" alt="birnefesgibi" title="Bir Nefes Gibi" data-description="Yazarı: Ferzan Özpetek <br/>Kategorisi: Roman <br/>Yayınevi: Can Yayınları <br/><br/>Puanı: 4.25 <br/>Fiyatı: 17.59 TL<br/><br/>" />
                                <a href="KitapDetay.aspx?Kitapid=2" class="btn btn-outline-info hvr-float-shadow" target="_blank">
                                    <button class="amazingsliderbutton btn" disabled="disabled" style="width: 1px;"></button>
                                    Detaylar
                                    <button class="amazingsliderbutton btn" disabled="disabled" style="width: 1px;"></button>
                                </a>
                            </li>
                            <li>
                                <img src="imagesslide/simyaci.png" alt="simyaci" title="Simyacı" data-description="Yazarı: Paulo Coelho <br/>Kategorisi: Roman <br/>Yayınevi: Can Yayınları <br/><br/>Puanı: 3.50 <br/>Fiyatı: 24.99 TL<br/><br/>" />
                                <a href="KitapDetay.aspx?Kitapid=1" class="btn btn-outline-info hvr-float-shadow" target="_blank">
                                    <button class="amazingsliderbutton btn" disabled="disabled" style="width: 1px;"></button>
                                    Detaylar
                                    <button class="amazingsliderbutton btn" disabled="disabled" style="width: 1px;"></button>
                                </a>
                            </li>
                            <li>
                                <img src="imagesslide/ucurtmaavcisi.png" alt="ucurtmaavcisi" title="Uçurtma Avcısı" data-description="Yazarı: Khaled Hosseini <br/>Kategorisi: Roman <br/>Yayınevi: Everest Yayınları <br/><br/>Puanı: 3.0 <br/>Fiyatı: 23.45 TL<br/><br/>" />
                                <a href="KitapDetay.aspx?Kitapid=4" class="btn btn-outline-info hvr-float-shadow" target="_blank">
                                    <button class="amazingsliderbutton btn" disabled="disabled" style="width: 1px;"></button>
                                    Detaylar
                                    <button class="amazingsliderbutton btn" disabled="disabled" style="width: 1px;"></button>
                                </a>
                            </li>
                            <li>
                                <img src="imagesslide/yuzunlerinefendisi1.png" alt="yuzunlerinefendisi1sssss" title="Yüzüklerin Efendisi I" data-description="Yazarı: J.R.R. Tolkien <br/>Kategorisi: Roman <br/>Yayınevi: Metis Yayıncılık <br/><br/>Puanı: 4.75 <br/>Fiyatı: 51.20 TL<br/><br/>" />
                                <a href="KitapDetay.aspx?Kitapid=3" class="btn btn-outline-info hvr-float-shadow" target="_blank">
                                    <button class="amazingsliderbutton btn" disabled="disabled" style="width: 1px;"></button>
                                    Detaylar
                                    <button class="amazingsliderbutton btn" disabled="disabled" style="width: 1px;"></button>
                                </a>
                            </li>
                            <li>
                                <img src="imagesslide/dostoyevskibiyografi.png" alt="dostoyevskibiyografi" title="Dostoyevski Biyografi" data-description="Yazarı:  Hüseyin Kandemir <br/>Kategorisi: Biyografi <br/>Yayınevi: Çizgi Kitabevi <br/><br/>Puanı: 4.0 <br/>Fiyatı: 25.60 TL<br/><br/>" />
                                <a href="KitapDetay.aspx?Kitapid=16" class="btn btn-outline-info hvr-float-shadow" target="_blank">
                                    <button class="amazingsliderbutton btn" disabled="disabled" style="width: 1px;"></button>
                                    Detaylar
                                    <button class="amazingsliderbutton btn" disabled="disabled" style="width: 1px;"></button>
                                </a>
                            </li>
                        </ul>
                        <ul class="amazingslider-thumbnails" style="display: none;">
                            <li>
                                <img src="imagesslide/birnefesgibi-tn.png" alt="birnefesgibi" title="Bir Nefes Gibi" /></li>
                            <li>
                                <img src="imagesslide/simyaci-tn.png" alt="simyaci" title="Simyacı" /></li>
                            <li>
                                <img src="imagesslide/ucurtmaavcisi-tn.png" alt="ucurtmaavcisi" title="Uçurtma Avcısı" /></li>
                            <li>
                                <img src="imagesslide/yuzunlerinefendisi1-tn.png" alt="yuzunlerinefendisi1" title="Yüzüklerin Efendisi I" /></li>
                            <li>
                                <img src="imagesslide/dostoyevskibiyografi-tn.png" alt="dostoyevskibiyografi" title="Dostoyevski Biyografi" /></li>
                        </ul>
                    </div>
                </div>
            </section>
            <!--/Anasayfadaki slider section-->

            <!-- Anasayfa içerik kısmı, kitap sliderı altındakiler-->
            <section>
                <div class="container navbar navbar-expand-md navbar-dark filtercerceve0 bgmyicerik">
                    <div class="row">
                        <!--veri puani yüksek olanlar listelenen card divi üstte, bası-->
                        <div class="navbar navbar-expand-md navbar-dark">
                            <div class="row shadow border20p" style="border: 1px solid black; float: left; word-break: break-all;">
                                <div class="container">
                                    <div class="mr-auto golgeliKutu2 baslikcerceve">
                                        <asp:Label ID="LblYuksekPuan" runat="server" Style="font-size: x-large; color: black;" Text="Puanı Yüksek Olanlar"></asp:Label>
                                    </div>
                                    <div class="ml-auto">
                                        <div class="container">
                                            <div class="py-1 ml-auto bg-transparent" style="float: right;">
                                                <asp:LinkButton CssClass="page-link shadow" ID="LinkbtnYuksekPuan" runat="server" Text="Tümünü Göster >>" Font-Bold="true" OnClick="LinkbtnYuksekPuan_Click"/>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row navbar-expand-md m-3">
                                    <asp:DataList RepeatDirection="Horizontal" RepeatColumns="5" ID="DataListYuksekPuan" runat="server">
                                        <ItemTemplate>
                                            <div class="card m-2 shadow hvr-float-shadow" style="width: 195px; height: 320px; text-align: center; align-content: center; word-break: break-word;">
                                                <div>
                                                    <a class="hvr-float-shadow" href="KitapDetay.aspx?Kitapid=<%# Eval("Kitapid") %>" title='<%# Eval("KitapAdi") %>'>
                                                        <img class="card-img-top shadow" src='<%# Eval("KitapResim") %>' alt="Card image" style="width: 160px; height: 130px;" runat="server" />
                                                    </a>
                                                </div>
                                                <div class="card-body" style="word-break: break-word;">
                                                    <div class="collapse navbar-collapse bg-transparent" id="anaMenu">
                                                        <table class="form-signin">
                                                            <tr>
                                                                <td>
                                                                    <a class="bk" href="KitapDetay.aspx?Kitapid=<%# Eval("Kitapid") %>" title='<%# Eval("KitapAdi") %>'>
                                                                        <asp:Label ID="lblYuksekPuanKitapAdi" runat="server" Font-Bold="true" Font-Size="11" Text='<%# Eval("KitapAdi") %>'></asp:Label></a>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:Label ID="lblYuksekPuanYazarAdi" runat="server" Font-Size="10" Text='<%# Eval("YazarAdiSoyadi") %>'></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:Label ID="lblYuksekPuanYayineviAdi" runat="server" Font-Size="10" Text='<%# Eval("YayineviAdi") %>'></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:Label ID="lblYuksekPuanKitapFiyati" runat="server" Font-Size="11" Text='<%# Eval("KitapFiyat") %>'></asp:Label>
                                                                    <asp:Label ID="lblYuksekKitapFiyatTL" runat="server" Font-Size="11" Text="TL"></asp:Label>
                                                                    | <span class="fas fa-star" style="color: yellow"></span>
                                                                    <asp:Label ID="lblYuksekPuanKitapPuani" runat="server" Text='<%# Eval("KitapOrtalamaPuani") %>'></asp:Label>
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
                        <!--veri puani yüksek olanlar listelenen card divi üstte, sonu-->
                        <hr class="w-100" style="border: 1px solid #a1a1a1;" />

                        <!--veri yorum sayisi yüksek olanlar listelenen card divi alttan 2., bası-->
                        <div class="navbar navbar-expand-md navbar-dark">
                            <div class="row shadow border20p" style="border: 1px solid black; float: left; word-break: break-all;">
                                <div class="container">
                                    <div class="mr-auto golgeliKutu2 baslikcerceve">
                                        <asp:Label ID="LblYorumSayisi" runat="server" Style="font-size: x-large; color: black;" Text="Çok Yorum Alanlar"></asp:Label>
                                    </div>
                                    <div class="ml-auto">
                                        <div class="container">
                                            <div class="py-1 ml-auto" style="float: right;">
                                                <asp:LinkButton CssClass="page-link shadow" ID="LinkbtnYorumSayisi" runat="server" Text="Tümünü Göster >>" Font-Bold="true" OnClick="LinkbtnYorumSayisi_Click"/>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row navbar-expand-md m-3">
                                    <asp:DataList RepeatDirection="Horizontal" RepeatColumns="5" ID="DataListYorumSayisi" runat="server">
                                        <ItemTemplate>
                                            <div class="card m-2 shadow hvr-float-shadow" style="width: 195px; height: 320px; text-align: center; align-content: center; word-break: break-word;">
                                                <div>
                                                    <a class="hvr-float-shadow" href="KitapDetay.aspx?Kitapid=<%# Eval("Kitapid") %>" title='<%# Eval("KitapAdi") %>'>
                                                        <img class="card-img-top shadow" src='<%# Eval("KitapResim") %>' alt="Card image" style="width: 160px; height: 130px;" runat="server" />
                                                    </a>
                                                </div>
                                                <div class="card-body" style="word-break: break-word;">
                                                    <div class="collapse navbar-collapse bg-transparent" id="anaMenu">
                                                        <table class="form-signin">
                                                            <tr>
                                                                <td>
                                                                    <a class="bk" href="KitapDetay.aspx?Kitapid=<%# Eval("Kitapid") %>" title='<%# Eval("KitapAdi") %>'>
                                                                        <asp:Label ID="lblYorumSayisiKitapAdi" runat="server" Font-Bold="true" Font-Size="11" Text='<%# Eval("KitapAdi") %>'></asp:Label></a>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:Label ID="lblYorumSayisiYazarAdi" runat="server" Font-Size="10" Text='<%# Eval("YazarAdiSoyadi") %>'></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:Label ID="lblYorumSayisiYayineviAdi" runat="server" Font-Size="10" Text='<%# Eval("YayineviAdi") %>'></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:Label ID="lblYorumSayisiKitapFiyati" runat="server" Font-Size="11" Text='<%# Eval("KitapFiyat") %>'></asp:Label>
                                                                    <asp:Label ID="lblYorumSayisiKitapFiyatTL" runat="server" Font-Size="11" Text="TL"></asp:Label>
                                                                    | <span class="fas fa-star" style="color: yellow"></span>
                                                                    <asp:Label ID="lblYorumSayisiKitapPuani" runat="server" Text='<%# Eval("KitapOrtalamaPuani") %>'></asp:Label>
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
                        <!--veri yorum sayisi yüksek olanlar listelenen card divi alttan 2., sonu-->
                        <hr class="w-100" style="border: 1px solid #a1a1a1;" />

                        <!--veri son eklenenler listelenen card divi üstten 2., bası-->
                        <div class="navbar navbar-expand-md navbar-dark">
                            <div class="row shadow border20p" style="border: 1px solid black; float: left; word-break: break-all;">
                                <div class="container">
                                    <div class="mr-auto golgeliKutu2 baslikcerceve">
                                        <asp:Label ID="LblSonEklenenler" runat="server" Style="font-size: x-large; color: black;" Text="Son Eklenenler"></asp:Label>
                                    </div>
                                    <div class="ml-auto">
                                        <div class="container">
                                            <div class="py-1 ml-auto" style="float: right;">
                                                <asp:LinkButton CssClass="page-link shadow" ID="LinkbtnSonEklenenlerTumu" runat="server" Text="Tümünü Göster >>" Font-Bold="true" OnClick="LinkbtnSonEklenenlerTumu_Click"/>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row navbar-expand-md m-3">
                                    <asp:DataList RepeatDirection="Horizontal" RepeatColumns="5" ID="DataListSonEklenen" runat="server">
                                        <ItemTemplate>
                                            <div class="card m-2 shadow hvr-float-shadow" style="width: 195px; height: 320px; text-align: center; align-content: center; word-break: break-word;">
                                                <div>
                                                    <a class="hvr-float-shadow" href="KitapDetay.aspx?Kitapid=<%# Eval("Kitapid") %>" title='<%# Eval("KitapAdi") %>'>
                                                        <img class="card-img-top shadow" src='<%# Eval("KitapResim") %>' alt="Card image" style="width: 160px; height: 130px;" runat="server" /></a>
                                                </div>
                                                <div class="card-body" style="word-break: break-word;">
                                                    <div class="collapse navbar-collapse bg-transparent" id="anaMenu">
                                                        <table class="form-signin">
                                                            <tr>
                                                                <td>
                                                                    <a class="bk" href="KitapDetay.aspx?Kitapid=<%# Eval("Kitapid") %>" title='<%# Eval("KitapAdi") %>'>
                                                                        <asp:Label ID="lblSonKitapAdi" runat="server" Font-Bold="true" Font-Size="11" Text='<%# Eval("KitapAdi") %>'></asp:Label></a>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:Label ID="lblSonYazarAdi" runat="server" Font-Size="10" Text='<%# Eval("YazarAdiSoyadi") %>'></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:Label ID="lblSonYayineviAdi" runat="server" Font-Size="10" Text='<%# Eval("YayineviAdi") %>'></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:Label ID="lblSonKitapFiyati" runat="server" Font-Size="11" Text='<%# Eval("KitapFiyat") %>'></asp:Label>
                                                                    <asp:Label ID="lblSonKitapFiyatTL" runat="server" Font-Size="11" Text="TL"></asp:Label>
                                                                    | <span class="fas fa-star" style="color: yellow"></span>
                                                                    <asp:Label ID="lblSonKitapPuani" runat="server" Text='<%# Eval("KitapOrtalamaPuani") %>'></asp:Label>
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
                        <!--veri son eklenenler listelenen card divi üstten 2., sonu-->
                        <hr class="w-100" style="border: 1px solid #a1a1a1;" /> 
                        
                        <!--veri puani düşük olanlar listelenen card divi alttan 2., bası-->
                        <div class="navbar navbar-expand-md navbar-dark">
                            <div class="row shadow border20p" style="border: 1px solid black; float: left; word-break: break-all;">
                                <div class="container">
                                    <div class="mr-auto golgeliKutu2 baslikcerceve">
                                        <asp:Label ID="LblDusukPuan" runat="server" Style="font-size: x-large; color: black;" Text="Puanı Düşük Olanlar"></asp:Label>
                                    </div>
                                    <div class="ml-auto">
                                        <div class="container">
                                            <div class="py-1 ml-auto" style="float: right;">
                                                <asp:LinkButton CssClass="page-link shadow" ID="LinkbtnDusukPuan" runat="server" Text="Tümünü Göster >>" Font-Bold="true" OnClick="LinkbtnDusukPuan_Click"/>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row navbar-expand-md m-3">
                                    <asp:DataList RepeatDirection="Horizontal" RepeatColumns="5" ID="DataListDusukPuan" runat="server">
                                        <ItemTemplate>
                                            <div class="card m-2 shadow hvr-float-shadow" style="width: 195px; height: 320px; text-align: center; align-content: center; word-break: break-word;">
                                                <div>
                                                    <a class="hvr-float-shadow" href="KitapDetay.aspx?Kitapid=<%# Eval("Kitapid") %>" title='<%# Eval("KitapAdi") %>'>
                                                        <img class="card-img-top shadow" src='<%# Eval("KitapResim") %>' alt="Card image" style="width: 160px; height: 130px;" runat="server" />
                                                    </a>
                                                </div>
                                                <div class="card-body" style="word-break: break-word;">
                                                    <div class="collapse navbar-collapse bg-transparent" id="anaMenu">
                                                        <table class="form-signin">
                                                            <tr>
                                                                <td>
                                                                    <a class="bk" href="KitapDetay.aspx?Kitapid=<%# Eval("Kitapid") %>" title='<%# Eval("KitapAdi") %>'>
                                                                        <asp:Label ID="lblDusukPuanKitapAdi" runat="server" Font-Bold="true" Font-Size="11" Text='<%# Eval("KitapAdi") %>'></asp:Label></a>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:Label ID="lblDusukPuanYazarAdi" runat="server" Font-Size="10" Text='<%# Eval("YazarAdiSoyadi") %>'></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:Label ID="lblDusukPuanYayineviAdi" runat="server" Font-Size="10" Text='<%# Eval("YayineviAdi") %>'></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:Label ID="lblDusukPuanKitapFiyati" runat="server" Font-Size="11" Text='<%# Eval("KitapFiyat") %>'></asp:Label>
                                                                    <asp:Label ID="lblDusukPuanKitapFiyatTL" runat="server" Font-Size="11" Text="TL"></asp:Label>
                                                                    | <span class="fas fa-star" style="color: yellow"></span>
                                                                    <asp:Label ID="lblDusukPuanKitapPuani" runat="server" Text='<%# Eval("KitapOrtalamaPuani") %>'></asp:Label>
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
                        <!--veri puani düşük olanlar listelenen card divi alttan 2., sonu-->
                        <hr class="w-100" style="border: 1px solid #a1a1a1;" />

                        <!--veri ilk eklenenler listelenen card divi altta, bası-->
                        <div class="navbar navbar-expand-md navbar-dark">
                            <div class="row shadow border20p" style="border: 1px solid black; float: left; word-break: break-all;">
                                <div class="container">
                                    <div class="mr-auto golgeliKutu2 baslikcerceve">
                                        <asp:Label ID="LblilkEklenenler" runat="server" Style="font-size: x-large; color: black;" Text="İlk Eklenenler"></asp:Label>
                                    </div>
                                    <div class="ml-auto">
                                        <div class="container">
                                            <div class="py-1 ml-auto" style="float: right;">
                                                <asp:LinkButton CssClass="page-link shadow" ID="LinkbtnilkEklenenlerTumu" runat="server" Text="Tümünü Göster >>" Font-Bold="true" OnClick="LinkbtnilkEklenenlerTumu_Click"/>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row navbar-expand-md m-3">
                                    <asp:DataList RepeatDirection="Horizontal" RepeatColumns="5" ID="DataListilkEklenen" runat="server">
                                        <ItemTemplate>
                                            <div class="card m-2 shadow hvr-float-shadow" style="width: 195px; height: 320px; text-align: center; align-content: center; word-break: break-word;">
                                                <div>
                                                    <a class="hvr-float-shadow" href="KitapDetay.aspx?Kitapid=<%# Eval("Kitapid") %>" title='<%# Eval("KitapAdi") %>'>
                                                        <img class="card-img-top shadow" src='<%# Eval("KitapResim") %>' alt="Card image" style="width: 160px; height: 130px;" runat="server" />
                                                    </a>
                                                </div>
                                                <div class="card-body" style="word-break: break-word;">
                                                    <div class="collapse navbar-collapse bg-transparent" id="anaMenu">
                                                        <table class="form-signin">
                                                            <tr>
                                                                <td>
                                                                    <a class="bk" href="KitapDetay.aspx?Kitapid=<%# Eval("Kitapid") %>" title='<%# Eval("KitapAdi") %>'>
                                                                        <asp:Label ID="lblilkKitapAdi" runat="server" Font-Bold="true" Font-Size="11" Text='<%# Eval("KitapAdi") %>'></asp:Label></a>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:Label ID="lblilkYazarAdi" runat="server" Font-Size="10" Text='<%# Eval("YazarAdiSoyadi") %>'></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:Label ID="lblilkYayineviAdi" runat="server" Font-Size="10" Text='<%# Eval("YayineviAdi") %>'></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:Label ID="lblilkKitapFiyati" runat="server" Font-Size="11" Text='<%# Eval("KitapFiyat") %>'></asp:Label>
                                                                    <asp:Label ID="lblilkKitapFiyatTL" runat="server" Font-Size="11" Text="TL"></asp:Label>
                                                                    | <span class="fas fa-star" style="color: yellow"></span>
                                                                    <asp:Label ID="lblilkKitapPuani" runat="server" Text='<%# Eval("KitapOrtalamaPuani") %>'></asp:Label>
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
                        <!--veri ilk eklenenler listelenen card divi altta, sonu-->
                    </div>
                </div>
            </section>
            <!--/Anasayfa içerik kısmı, kitap sliderı altındakiler-->
        </div>
    </div>
</asp:Content>
