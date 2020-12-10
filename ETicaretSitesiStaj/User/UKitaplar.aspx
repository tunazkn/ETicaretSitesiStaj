<%@ Page Title="Kullanıcı - Kitaplar" Language="C#" MasterPageFile="~/User/Kullanici.Master" AutoEventWireup="true" CodeBehind="UKitaplar.aspx.cs" Inherits="ETicaretSitesiStaj.User.UKitaplar" %>

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
        <div class="container my-4">
            <div class="row">
                <!-- kitaplar solda filtrenin oldugu kısım-->
                <div class="navbar-nav filtercerceve shadow col-md-2 my-2 bgmyfilter">
                    <div class="container-fluid" style="height: auto; word-break: break-word;">
                        <div class="row centerr">
                            <asp:Label CssClass="labeltxtdropSize my-1" ID="lblSearchSabit" runat="server" Text="Filter" Font-Bold="true" Font-Size="X-Large" Font-Italic="true"></asp:Label>
                            <br />
                            <table id="Table1" runat="server" class="my-2" cellpadding="6" horizontalalign="left">
                                <tr>
                                    <td class="auto-style3" style="text-align: center;">
                                        <div class="labeltxtdropSize Cercevelbltxt" style="float: left; text-align: left; background-color: grey;">
                                            <asp:Label CssClass="float-left labeltxtdropSize shadow ml-1" ID="lblMainGroup" runat="server" Text="Kitap"></asp:Label>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style3 pb-2">
                                        <asp:DropDownList CssClass="labeltxtdropSize Cercevelbltxt shadow" ID="DDLKitap" runat="server" AppendDataBoundItems="true">
                                            <asp:ListItem Value="Null" Selected="True">--Seç--</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style3">
                                        <div class="labeltxtdropSize Cercevelbltxt" style="float: left; text-align: left; background-color: grey;">
                                            <asp:Label CssClass="float-left labeltxtdropSize shadow ml-1" ID="lblSeries" runat="server" Text="Yazar"></asp:Label>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style3 pb-2">
                                        <asp:DropDownList CssClass="labeltxtdropSize Cercevelbltxt shadow" ID="DDLYazar" runat="server" AppendDataBoundItems="true">
                                            <asp:ListItem Value="Null" Selected="True">--Seç--</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style3">
                                        <div class="labeltxtdropSize Cercevelbltxt" style="float: left; text-align: left; background-color: grey;">
                                            <asp:Label CssClass="float-left labeltxtdropSize ml-1 shadow" ID="lblBrand" runat="server" Text="Kategori"></asp:Label>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style3 pb-2">
                                        <asp:DropDownList CssClass="labeltxtdropSize Cercevelbltxt shadow" ID="DDLKategori" runat="server" AppendDataBoundItems="true">
                                            <asp:ListItem Value="Null" Selected="True">--Seç--</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style3">
                                        <div class="labeltxtdropSize Cercevelbltxt" style="float: left; text-align: left; background-color: grey;">
                                            <asp:Label CssClass="float-left labeltxtdropSize ml-1 shadow" ID="lblQuality" runat="server" Text="Yayınevi"></asp:Label>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style3">
                                        <asp:DropDownList CssClass="labeltxtdropSize Cercevelbltxt shadow" ID="DDLYayınevi" runat="server" AppendDataBoundItems="true">
                                            <asp:ListItem Value="Null" Selected="True">--Seç--</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style3">
                                        <div style="font-size: 16px; height: 30px;">
                                            <asp:Button CssClass="btn btn-link text-dark px-1" ID="BtnSecim" Style="text-align: center;" runat="server" title="Seçimi Sıfırla" Text="Seçimi Sıfırla X" OnClick="BtnSecim_Click" />
                                        </div>
                                    </td>
                                </tr>
                            </table>
                            <div class="my-1 ">
                                <asp:Button CssClass="btncerceve shadow" ID="btnFilterAll" runat="server" Style="width: 150px; text-align: center; background-color: dimgray" Text="Ara" OnClick="btnFilterAll_Click" />
                            </div>
                        </div>
                    </div>
                    <hr />
                    <div class="container-fluid" style="height: auto; word-break: break-word;">
                        <div class="row align-content-center align-items-center align-self-center justify-content-center text-center">
                            <asp:Label CssClass=" labeltxtdropSize my-1 float-left" ID="Label1" runat="server" Text="Fiyata göre" Font-Bold="true" Font-Size="X-Large" Font-Italic="true"></asp:Label>
                            <br />
                            <table id="Table2" runat="server" class="my-2 mr-1" cellpadding="6" horizontalalign="left">
                                <tr>
                                    <td>
                                        <asp:TextBox CssClass="form-control shadow" ID="txtMinFiyat" runat="server" AutoCompleteType="Disabled" TextMode="Number" placeholder="Min"></asp:TextBox>
                                    </td>
                                    <td class="px-1 font-weight-bold text-dark" style="font-size: 30px;">- </td>
                                    <td>
                                        <asp:TextBox CssClass="form-control shadow mr-3" ID="txtMaxFiyat" runat="server" AutoCompleteType="Disabled" TextMode="Number" placeholder="Max"></asp:TextBox>
                                    </td>
                                </tr>
                            </table>
                            <div class="my-2">
                                <asp:Button CssClass="btncerceve shadow" ID="btnFilterFiyat" runat="server" Style="width: 150px; text-align: center; background-color: dimgray" Text="Ara" OnClick="btnFilterFiyat_Click" />
                            </div>
                        </div>
                    </div>
                    <!--deneme son -->
                </div>
                <!--/kitaplar solda filtrenin oldugu kısım-->

                <!-- kitaplar sağda kitapların listelendiği kısım-->
                <div class="navbar navbar-nav navbar-expand-md navbar-dark col-md-10 mb-2 pl-2">
                    <div class="row shadow pl-1 ml-1 bgmyicerik border20p" style="min-height: 600px; width: 937px; border: 2px solid #a1a1a1; word-break: break-all;">
                        <div class="container golgeliKutu3 mr-1 bordertop20" style="height: 90px;">
                            <div class="container mt-2">
                                <div class="ml-auto my-1" style="padding: 1px 1px 1px 1px; float: left; font-size: 18px; width: 55px; height: 30px;">
                                    <asp:Label CssClass="ml-1" ID="Label2" runat="server" Text="Sırala: "></asp:Label>
                                </div>
                                <asp:DropDownList CssClass="CercevelbltxtSira" ID="DDLSirala" runat="server" AutoPostBack="true" AppendDataBoundItems="true" OnSelectedIndexChanged="DDLSirala_SelectedIndexChanged">
                                    <asp:ListItem Value="0" Selected="True">- Sıralama Seç -</asp:ListItem>
                                    <asp:ListItem Value="1">Kitap Adı (A - Z)</asp:ListItem>
                                    <asp:ListItem Value="2">Kitap Adı (Z - A)</asp:ListItem>
                                    <asp:ListItem Value="3">Artan Fiyat</asp:ListItem>
                                    <asp:ListItem Value="4">Azalan Fiyat</asp:ListItem>
                                    <asp:ListItem Value="5">Azalan Puan</asp:ListItem>
                                    <asp:ListItem Value="6">Artan Puan</asp:ListItem>
                                    <asp:ListItem Value="7">Yeniden Eskiye</asp:ListItem>
                                    <asp:ListItem Value="8">Eskiden Yeniye</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="p-1 mr-auto">
                                <asp:Label ID="lblTumKitaplarListesi" runat="server" Style="font-size: x-large; color: black;" Text="Kitapların Listesi"></asp:Label>
                            </div>
                            <div class="ml-auto">
                                <div class="container">
                                    <div class="py-1 ml-auto" style="float: right;">
                                        <asp:Label ID="lblTumKitaplarinSayisi" runat="server" Text="."></asp:Label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--m-3 mu m-2 mi bakılacak anasayfada 3-->
                        <div class="row navbar-expand-md m-2 mt-3" style="min-height: 485px;">
                            <asp:DataList RepeatDirection="Horizontal" RepeatColumns="4" ID="DataListTumKitaplar" runat="server">
                                <ItemTemplate>
                                    <!--m-3 mu m-2 mi bakılacak anasayfada 2-->
                                    <div class="card m-3 shadowcart hvr-float-shadow" style="width: 195px; height: 320px; text-align: center; align-content: center; word-break: break-word;">
                                        <div>
                                            <a class="hvr-float-shadow" href="UKitapDetay.aspx?Kitapid=<%# Eval("Kitapid") %>" title='<%# Eval("KitapAdi") %>'>
                                                <img class="card-img-top shadow" src='<%# Eval("KitapResim") %>' alt="Card image" style="width: 160px; height: 130px;" runat="server" />
                                            </a>
                                        </div>
                                        <div class="card-body" style="word-break: break-word;">
                                            <div class="nav navbar-collapse" id="anaMenu">
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
    </section>
</asp:Content>
