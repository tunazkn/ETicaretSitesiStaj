<%@ Page Title="Kullanıcı - Kitap Satın Al" Language="C#" MasterPageFile="~/User/Kullanici.Master" AutoEventWireup="true" CodeBehind="UKitapSatinal.aspx.cs" Inherits="ETicaretSitesiStaj.User.UKitapSatinal1" %>

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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="m-1">
        <div class="container my-4 py-2">
            <div class="row shadow bgmyicerik border20p" style="border: 2px solid #a1a1a1; word-break: break-all;">
                <!-- tab butonlarının olduğu kısım-->
                <div class="container">
                    <div class="row col-md-12 mt-2">
                        <asp:Button CssClass="btn btn-light" ID="btnKitap" Style="border: 1px solid black; text-align: center;" runat="server" title="Kitap Bilgileri" Text="Kitap Bilgileri" OnClick="btnKitap_Click" />
                        <asp:Button CssClass="btn btn-light" ID="btnKullanici" Style="border: 1px solid black; text-align: center;" runat="server" title="Bilgilerim" Text="Bilgilerim" OnClick="btnKullanici_Click" />
                        <asp:Button CssClass="btn btn-light" ID="btnOdeme" Style="border: 1px solid black; text-align: center;" runat="server" title="Ödeme Bilgileri" Text="Ödeme Bilgileri" OnClick="btnOdeme_Click" />
                        <asp:Button CssClass="btn btn-light" ID="btnOnayla" Style="border: 1px solid black; text-align: center;" runat="server" title="Onay" Text="Onay" OnClick="btnOnayla_Click" />
                        <asp:Button CssClass="btn btn-light" ID="btnSiparis" Style="border: 1px solid black; text-align: center;" runat="server" title="Sipariş Bilgileri" Text="Sipariş Bilgileri" OnClick="btnSiparis_Click" />
                    </div>
                </div>
                <!--/tab butonlarının olduğu kısım-->

                <!-- multiview kısmı -->
                <div class="container ml-1 ml-3 mr-3 py-2" style="border: 1px solid black;">
                    <asp:MultiView ID="MultiView1" runat="server">
                        <asp:View ID="ViewKitap0" runat="server">
                            <div class="row">
                                <div class="navbar-nav col-md-3 ml-2">
                                    <div class="row navbar-expand-md m-1 shadow justify-content-center" style="max-width: 250px;">
                                        <div class="row navbar-expand-md shadow m-1">
                                            <asp:DataList RepeatDirection="Horizontal" RepeatColumns="1" ID="DataListKitapResimonay" runat="server">
                                                <ItemTemplate>
                                                    <div class="row m-1" style="text-align: center; align-content: center; word-break: break-word;">
                                                        <img class="card-img-top" src='<%# Eval("KitapResim") %>' alt="Card image" style="max-width: 180px; max-height: 200px;" runat="server" />
                                                    </div>
                                                </ItemTemplate>
                                            </asp:DataList>
                                        </div>
                                    </div>
                                </div>
                                <div class="navbar-nav col-md-8">
                                    <div class=" container-fluid navbar-expand-md m-1 shadow justify-content-center">
                                        <div class="row navbar-expand-md shadow m-1">
                                            <asp:DataList RepeatDirection="Horizontal" RepeatColumns="4" ID="DataListKitapDetayonay" runat="server">
                                                <ItemTemplate>
                                                    <div class="card m-1 bg-transparent" style="min-height: 200px; width: 690px; word-break: break-word;">
                                                        <table class="form-signin ml-2 ">
                                                            <tr>
                                                                <td style="word-break: break-word;">
                                                                    <asp:Label ID="lblTumKitapAdi" runat="server" Font-Bold="true" Font-Size="30" Text='<%# Eval("KitapAdi") %>'></asp:Label>
                                                                    </a>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="word-break: break-all; width: 50%; height: 35px;">
                                                                    <asp:Label ID="Label1" runat="server" Font-Size="13" Text="Yazar: "></asp:Label>
                                                                    <a class="bk" href="UYazarlar.aspx?yaz=<%# Eval("KitapYazarid") %>">
                                                                        <asp:Label ID="lblTumYazarAdi" runat="server" Font-Bold="true" Font-Size="15" Text='<%# Eval("YazarAdiSoyadi") %>'></asp:Label>
                                                                    </a>
                                                                </td>

                                                                <td style="word-break: break-all; width: 50%; height: 35px;">
                                                                    <asp:Label ID="Label2" runat="server" Font-Size="13" Text="Yayınevi: "></asp:Label>
                                                                    <a class="bk" href="UYayinevleri.aspx?yev=<%# Eval("KitapYayineviid") %>">
                                                                        <asp:Label ID="lblTumYayineviAdi" runat="server" Font-Bold="true" Font-Size="15" Text='<%# Eval("YayineviAdi") %>'></asp:Label>
                                                                    </a>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="word-break: break-all; width: 50%; height: 35px;">
                                                                    <asp:Label ID="Label8" runat="server" Font-Size="13" Text="Açıklama: "></asp:Label>
                                                                    <asp:Label ID="Label9" runat="server" Font-Size="11" Text='<%# Eval("KitapAciklama") %>'></asp:Label>
                                                                    </a>
                                                                </td>
                                                                <td style="word-break: break-all; width: 50%; height: 35px;">
                                                                    <table>
                                                                        <tr style="text-align: right;">
                                                                            <td>
                                                                                <span class="fas fa-star" style="color: yellow"></span>
                                                                                <asp:Label ID="lblTumKitapPuani" runat="server" Text='<%# Eval("KitapOrtalamaPuani") %>'></asp:Label>
                                                                                <asp:Label ID="Label4" runat="server" Text="/ 5 "></asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr class="ml-4">
                                                                <td style="word-break: break-all; width: 50%;">
                                                                    <asp:Label ID="Label6" CssClass="ml-auto" runat="server" ForeColor="Transparent" Text="..."></asp:Label>
                                                                    <asp:Label ID="Label3" CssClass="ml-auto" runat="server" Font-Size="10" Text=" 1 Adet "></asp:Label>
                                                                </td>
                                                                <td style="word-break: break-all; width: 50%;">
                                                                    <asp:Label ID="lblTumKitapFiyati" runat="server" Font-Size="30" Text='<%# Eval("KitapFiyat") %>'></asp:Label>
                                                                    <asp:Label ID="lblTumKitapFiyatTL" runat="server" Text="TL"></asp:Label>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </div>
                                                </ItemTemplate>
                                            </asp:DataList>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </asp:View>
                        <asp:View ID="ViewKullanici1" runat="server">
                            <div class="row">
                                <table class="form-signin  ml-2">
                                    <tr>
                                        <td style="padding-top: 9px; width:50%;">Adı:&nbsp;</td>
                                        <td style="padding-top: 9px; width:50%;">Soyadı:&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="pr-5" style="padding-top: 9px; margin-top: 15px;">
                                            <asp:TextBox CssClass="form-control mt-2" ID="txtKulAdi" runat="server" AutoCompleteType="Disabled" ReadOnly="true"></asp:TextBox>
                                        </td>
                                        <td class="pr-5" style="padding-top: 9px; margin-top: 15px;">
                                            <asp:TextBox CssClass="form-control mt-2" ID="txtKulSoyad" runat="server" AutoCompleteType="Disabled" ReadOnly="true"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="padding-top: 20px;">Mail:&nbsp;</td>
                                        <td style="padding-top: 20px;">Telefon:&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="pr-5" style="padding-top: 9px;">
                                            <asp:TextBox CssClass="form-control mt-2" ID="txtKulMail" runat="server" AutoCompleteType="Disabled" ReadOnly="true"></asp:TextBox>
                                        </td>
                                        <td class="pr-5" style="padding-top: 9px; margin-top: 15px;">
                                            <asp:TextBox CssClass="form-control mt-2" ID="txtKulTel" runat="server" AutoCompleteType="Disabled" ReadOnly="true"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="padding-top: 20px;" colspan="2">Adres:&nbsp;
                                            <i class="fas fa-exclamation-circle"></i>(Açık adresiniz..)
                                        </td>
                                        </tr>
                                    <tr>
                                        <td class="pr-5" style="padding-top: 9px; margin-top: 15px;" colspan="2">
                                            <asp:TextBox CssClass="form-control mt-2" ID="txtkulAdres" runat="server" AutoCompleteType="Disabled" ReadOnly="true"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            NOT: Bilgileriniz güncel değilse, güncelledikten sonra devam ediniz.
                                        </td>
                                        <td>
                                            <asp:Button CssClass="btn btn-outline-success btn-block my-1 py-2" ID="btnKulGüncelle" runat="server" Width="300" Text="Bilgilerimi Güncelle" />
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </asp:View>
                        <asp:View ID="ViewOdeme2" runat="server">
                            <div class="row">
                                <table class="form-signin ml-2">
                                    <tr>
                                        <td style="padding-top: 9px;">Kart Üzerindeki isim&nbsp;</td>
                                        <td style="padding-top: 9px;">Kart Numarası&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="pr-5" style="padding-top: 9px; margin-top: 15px;">
                                            <asp:TextBox CssClass="form-control mt-2" ID="TextBox02" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                                        </td>
                                        <td class="pr-5" style="padding-top: 9px; margin-top: 15px;">
                                            <asp:TextBox CssClass="form-control mt-2" ID="TextBox05" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="padding-top: 20px;">Son Kullanma Tarihi:&nbsp;
                                            <i class="fas fa-exclamation-circle"></i>
                                        </td>
                                        <td style="padding-top: 20px;">CVV Numarası&nbsp;
                                            <i class="fas fa-exclamation-circle"></i>(Arka yüzündeki 3 haneli)
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="pr-5" style="padding-top: 9px;">
                                            <asp:TextBox CssClass="form-control mt-2" ID="TextBox6" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                                        </td>
                                        <td class="pr-5" style="padding-top: 9px; margin-top: 15px;">
                                            <asp:TextBox CssClass="form-control mt-2" ID="TextBox1" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </asp:View>
                        <asp:View ID="ViewOnayla3" runat="server">
                            <div class="row">
                                <asp:DataList RepeatDirection="Horizontal" RepeatColumns="1" ID="DataListsoru" runat="server">
                                    <ItemTemplate>
                                        <div class="row m-2" style="text-align: center; align-content: center; word-break: break-word;">
                                            <table class="form-signin">
                                                <tr>
                                                    <td style="text-align: left;">
                                                        <asp:Label ID="Label8" runat="server" Font-Bold="true" ForeColor="Red" Font-Size="X-Large" Text="'"></asp:Label>
                                                        <asp:Label ID="Labelkitapadi" runat="server" Text='<%# Eval("KitapAdi") %>' Font-Bold="true" ForeColor="Red" Font-Size="X-Large"></asp:Label>

                                                        <asp:Label ID="Labelanasayfa" runat="server" Font-Bold="true" ForeColor="Red" Font-Size="X-Large" Text="&nbsp;' isimli bu kitabı"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <br />
                                                        <asp:Label ID="Label5" runat="server" Font-Bold="true" Font-Size="Large" Text="Girdiğin kişisel bilgileriniz ve ödeme bilgileriniz doğrultusunda almayı onaylıyor musun?"></asp:Label>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </ItemTemplate>
                                </asp:DataList>
                            </div>
                        </asp:View>
                        <asp:View ID="ViewSiparis4" runat="server">
                            <div class="row">
                                <div class="row m-2" style="text-align: center; align-content: center; word-break: break-word;">
                                    <table class="form-signin">
                                        <tr>
                                            <td style="text-align: left;">
                                                <asp:Label ID="Labelanasayfa" runat="server" Font-Bold="true" Font-Size="X-Large" Text="Satın alma işleminiz başarıyla tamamlanmıştır."></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <br />
                                                <asp:Label ID="LabelSiparisKodu" runat="server" Font-Bold="true" ForeColor="Red" Font-Size="Large" Text="."></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>

                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </asp:View>
                    </asp:MultiView>
                </div>
                <!--/multiview kısmı -->

                <!-- yonlendirme butonları-->
                <div class="row my-3 ml-auto mr-1">
                    <asp:Button CssClass="btn btn-danger mx-3" ID="btniptal" Style="text-align: center;" runat="server" title="İptal" Text="İptal" OnClick="btniptal_Click" />
                    <asp:Button CssClass="btn btn-primary" ID="btnGeri" Style="text-align: center;" runat="server" title="Geri" Text="Geri" OnClick="btnGeri_Click" />
                    <asp:Button CssClass="btn btn-info mx-1" ID="btnileri" Style="text-align: center;" runat="server" title="İleri" Text="İleri" OnClick="btnileri_Click" />
                    <asp:Button CssClass="btn btn-success mx-1" ID="btnOnaylaislem" Style="text-align: center;" runat="server" title="Onayla" Text="Onayla" Visible="false" OnClick="btnOnaylaislem_Click" />
                    <asp:Button CssClass="btn btn-success mx-3" ID="btnBitir" Style="text-align: center;" runat="server" title="Bitir" Text="Bitir" OnClick="btnBitir_Click" />
                </div>
                <!--/yonlendirme butonları-->
            </div>
        </div>
    </section>

    <section class="m-1">
        <!-- kitabın karetorilerie giden yol-->
        <div class="container my-4">
            <div class="row bgmyfilter border20p shadow">
                <div class="row navbar-expand-md mx-2 my-1">
                </div>
            </div>
        </div>
    </section>
</asp:Content>
