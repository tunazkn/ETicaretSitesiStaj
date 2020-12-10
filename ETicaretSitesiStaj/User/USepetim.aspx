<%@ Page Title="Kullanıcı - Sepetim" Language="C#" MasterPageFile="~/User/Kullanici.Master" AutoEventWireup="true" CodeBehind="USepetim.aspx.cs" Inherits="ETicaretSitesiStaj.User.USepetim" %>

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

    <script src="../Scripts/jquery-3.5.1.js"></script>
    <script src="../Scripts/jquery-3.5.1.min.js"></script>
    <script src="../Scripts/popper.min.js"></script>
    <script src="../Scripts/bootstrap.min.js" defer></script>
    <script src="../bootstrap/js/solid.min.js" defer></script>
    <script src="../bootstrap/js/fontawesome.min.js" defer></script>
    <!--CSS-->
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="../bootstrap/css/fontawesome.min.css" rel="stylesheet" />
    <link href="../bootstrap/css/solid.min.css" rel="stylesheet" />
    <!--<link href="bootstrap/css/style.css" rel="stylesheet" />-->

    <link href="../MyStyles.css" rel="stylesheet" />
    <link href="MyStyles.css" rel="stylesheet" />
    <link href="hover.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="m-1">
        <div class="container my-4 py-2">
            <div class="row shadow bgmyicerik border20p pb-2" style="border: 2px solid #a1a1a1; min-height: 480px; word-break: break-all;">
                <div class="container">
                    <!-- sepet yolu-->
                    <div class="row shadow bordertop20">
                        <div class="row col-md-12 navbar-expand-md ml-2">
                            <div class="row mx-0 my-2" style="word-break: break-word;">
                                <table class="form-signin">
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label1" runat="server" Text="Anasayfa" Font-Bold="true"></asp:Label>&nbsp;>&nbsp;
                                        </td>
                                        <td>
                                            <asp:Label ID="lbl" runat="server" Text="Sepetim" Font-Bold="true"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                    <!-- sepet içeriği-->
                    <div class="row col-md-12 navbar-expand-md mt-2 mx-2 ">
                        <div class="row w-100 my-2">
                            <div class="navbar-nav col-md-12 ml-2">
                                <div class=" container-fluid navbar-expand-md m-1 justify-content-center">
                                    <div class="row">
                                        <table>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label2" runat="server" Text="Sepetim" Font-Size="20" Font-Bold="true"></asp:Label>
                                                </td>
                                                <td class="mt-4 pt-2">&nbsp;
                                                    <asp:Label ID="lblsepetsayisi" runat="server" Text="(1 Ürün)" Font-Bold="true"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    <hr />
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                    <div class="row navbar-expand-md m-1">
                                        <div class="nav col-md-9">
                                            <br />
                                            <div class="col-lg-12">
                                                <table class="form-signin w-100 font-weight-bold centerr" border="1" style="font-size: x-large">
                                                    <tr>
                                                        <td style="width: 50%; padding-left: 3px;">Ürün Bilgileri</td>
                                                        <td style="width: 25%; padding-left: 3px;">Adet</td>
                                                        <td style="width: 25%; padding-left: 3px;">Birim Fiyatı</td>
                                                    </tr>
                                                </table>
                                            </div>
                                            <div class="col-lg-12">
                                                <asp:DataList CssClass=" w-100" RepeatDirection="Vertical" RepeatColumns="1" ID="DataListSepet" runat="server">
                                                    <ItemTemplate>
                                                        <table class="form-signin w-100 " border="1">
                                                            <tr>
                                                                <td style="width: 50%; padding-left: 3px;">
                                                                    <table>
                                                                        <tr>
                                                                            <td>
                                                                                <img class="card-img-top m-1" src='<%# Eval("KitapResim") %>' alt="Card image" style="max-width: 80px; max-height: 100px;" runat="server" />
                                                                            </td>
                                                                            <td style="word-break: break-word;">
                                                                                <table class="form-signin ml-4">
                                                                                    <tr>
                                                                                        <td>
                                                                                            <a class="bk" href="UKitapDetay.aspx?Kitapid=<%# Eval("SepetKitapid") %>" title='<%# Eval("KitapAdi") %>' target="_blank">
                                                                                                <asp:Label ID="lblTumKitapAdi" runat="server" Font-Bold="true" Font-Size="18" Text='<%# Eval("KitapAdi") %>'></asp:Label>
                                                                                            </a>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td>
                                                                                            <asp:Label ID="lblTumYazarAdi" runat="server" Font-Size="12" Text='<%# Eval("YazarAdiSoyadi") %>'></asp:Label>
                                                                                        </td>
                                                                                    </tr>
                                                                                </table>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                                <td style="width: 25%; padding-left: 3px;">
                                                                    <table class="form-signin centerr">
                                                                        <tr>
                                                                            <td>
                                                                                <button class="btn-light border20p" style="border: 1px solid black; width: 25px; height: 25px;"><i class="fas fa-minus"></i></button>
                                                                                <asp:Label ID="lblSiparisCode" runat="server" Text='<%# Eval("SepetAdet") %>'></asp:Label>
                                                                                <button class="btn-light border20p" style="border: 1px solid black; width: 25px; height: 25px;"><i class="fas fa-plus"></i></button>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>
                                                                                <button class="btn-light text-dark border20p px-1 mt-1" style="border: 1px solid black;">Güncelle</button>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                                <td style="width: 25%; padding-left: 3px;">
                                                                    <asp:Label ID="lblSiparisAdet" runat="server" Text='<%# Eval("SepetFiyat") %>'></asp:Label>
                                                                    <asp:Label ID="lblSiparisFiyatTL" runat="server" Text="TL"></asp:Label>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </ItemTemplate>
                                                </asp:DataList>
                                            </div>
                                        </div>
                                        <div class="nav col-md-3 bgmyfilter mb-auto border20p font-weight-bold" style="border: 2px solid black;">
                                            <table class="form-signin ml-3 my-2 w-100">
                                                <tr>
                                                    <td colspan="2">Sipariş Özeti
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:Label ID="lblozeturunsayisi" runat="server" Font-Bold="false" Text="."></asp:Label></td>
                                                    <td></td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:Label ID="Label3" runat="server" ForeColor="Transparent" Text="."></asp:Label></td>
                                                    <td></td>
                                                </tr>
                                                <tr>
                                                    <td>Toplam Tutar
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="lblSiparisToplamtutar" runat="server" Text="."></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2">
                                                        <asp:Button CssClass="btn btn-success btn-block my-1 py-2 " ID="Button1" runat="server" Text="ALIŞVERİSİ TAMAMLA" />
                                                    </td>
                                                </tr>
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
    </section>
</asp:Content>
