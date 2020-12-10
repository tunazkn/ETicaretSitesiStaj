<%@ Page Title="Kullanıcı - Hesabım" Language="C#" MasterPageFile="~/User/Kullanici.Master" AutoEventWireup="true" CodeBehind="UHesabim.aspx.cs" Inherits="ETicaretSitesiStaj.User.UHesabim" %>

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
            <div class="row shadow bgmyicerik border20p pb-2" style="border: 2px solid #a1a1a1; min-height: 480px; word-break: break-all;">
                <div class="container">
                    <div class="row shadow bordertop20">
                        <!-- merhaba ve isim-->
                        <div class="row col-md-3 navbar-expand-md ml-2">
                            <table>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label8" runat="server" Font-Size="X-Large" Text="Merhaba"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="row mx-0" style="word-break: break-word;">
                                            <table class="form-signin">
                                                <tr>
                                                    <td>
                                                        <asp:Label ID="lblkullaniciadi" runat="server" Text="" Font-Bold="true" Font-Size="X-Large"></asp:Label>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <!-- yandali bilgilerim siperislerim listesi-->
                        <div class="row col-md-8 navbar-expand-md my-2 ml-2">
                            <table class="w-100 h-100">
                                <tr class="centerr">
                                    <td>
                                        <asp:Button CssClass="btn btn-link w-100 h-100 border-0 text-dark" ID="btnBilgilerim" Style="border: 1px solid black; text-align: center;" runat="server" Font-Size="20" title="Bilgilerim" Text="Bilgilerim" OnClick="btnBilgilerim_Click" />
                                    </td>
                                    <td>
                                        <asp:Button CssClass="btn btn-link w-100 h-100 border-0 text-dark" ID="btnSiparisler" Style="border: 1px solid black; text-align: center;" runat="server" Font-Size="20" title="Siparişlerim" Text="Siparişlerim" OnClick="btnSiparisler_Click" />
                                    </td>
                                    <td>
                                        <asp:Button CssClass="btn btn-link w-100 h-100 border-0 text-dark" ID="btnOdemeBilgileri" Style="border: 1px solid black; text-align: center;" runat="server" Font-Size="20" title="Ödeme Bilgilerim" Text="Ödeme Bilgilerim" OnClick="btnOdemeBilgileri_Click" />
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <div class="row col-md-12 navbar-expand-md m-2">
                        <asp:MultiView ID="MultiView1" runat="server">
                            <asp:View ID="ViewBilgilerim0" runat="server">
                                <div class="row w-100 my-2">
                                    <table class="form-signin ml-2">
                                        <tr>
                                            <td style="padding-top: 9px; width: 50%;">Adı:&nbsp;</td>
                                            <td style="padding-top: 9px; width: 50%;">Soyadı:&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="pr-5" style="padding-top: 9px; margin-top: 15px;">
                                                <asp:TextBox CssClass="form-control mt-2" ID="txtKulAdi" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                                            </td>
                                            <td class="pr-5" style="padding-top: 9px; margin-top: 15px;">
                                                <asp:TextBox CssClass="form-control mt-2" ID="txtKulSoyad" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="padding-top: 20px;">Mail:&nbsp;</td>
                                            <td style="padding-top: 20px;">Telefon:&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="pr-5" style="padding-top: 9px;">
                                                <asp:TextBox CssClass="form-control mt-2" ID="txtKulMail" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                                            </td>
                                            <td class="pr-5" style="padding-top: 9px; margin-top: 15px;">
                                                <asp:TextBox CssClass="form-control mt-2" ID="txtKulTel" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="padding-top: 20px;" colspan="2">Adres:&nbsp;
                                            <i class="fas fa-exclamation-circle"></i>(Açık adresiniz..)
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="pr-5" style="padding-top: 9px; margin-top: 15px;" colspan="2">
                                                <asp:TextBox CssClass="form-control mt-2" ID="txtkulAdres" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td style="padding-top: 20px;">
                                                <asp:Button CssClass="btn btn-success btn-block my-1 py-2 ml-auto mr-5" ID="btnKulGüncelle" runat="server" Width="300" Text="Güncelle" />
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </asp:View>
                            <asp:View ID="ViewSiparisler1" runat="server">
                                <div class="row w-100 my-2">
                                    <div class="navbar-nav col-md-12 ml-2">
                                        <div class=" container-fluid navbar-expand-md m-1 justify-content-center">
                                            <div class="row navbar-expand-md m-1">
                                                <div class="nav">
                                                    <div class="col-lg-12">
                                                        <asp:Label ID="lblsiparissayisi" runat="server" Font-Size="13" Font-Bold="true" Text="0"></asp:Label> adet güncel siparişiniz listelenmektedir.
                                                    </div>
                                                    <br />
                                                    <br />
                                                    <div class="col-lg-12">
                                                        Not: Sipariş kodu aynı olanlar sepet alışverişine aittir. 
                                                        <br />
                                                    </div>
                                                    <div class="col-lg-12">
                                                        <table class="form-signin w-100 font-weight-bold" border="1" style="font-size: x-large">
                                                            <tr>
                                                                <td style="width: 25%; padding-left: 3px;">Siparis Tarihi</td>
                                                                <td style="width: 25%; padding-left: 3px;">Siparis Kodu</td>
                                                                <td style="width: 25%; padding-left: 3px;">Tutar</td>
                                                                <td style="width: 25%; padding-left: 3px;">Siparis Durumu</td>
                                                            </tr>
                                                        </table>
                                                    </div>
                                                    <div class="col-lg-12">
                                                        <asp:DataList CssClass=" w-100" RepeatDirection="Vertical" RepeatColumns="1" ID="DataListSiparisler" runat="server">
                                                            <ItemTemplate>
                                                                <table class="form-signin w-100" border="1">
                                                                    <tr>
                                                                        <td style="width: 25%; padding-left: 3px;">
                                                                            <asp:Label ID="lblSiparisTarih" runat="server" Text='<%# Eval("Tarih") %>'></asp:Label>
                                                                        </td>
                                                                        <td style="width: 25%; padding-left: 3px;">
                                                                            <asp:Label ID="lblSiparisCode" runat="server" Text='<%# Eval("SiparisCode") %>'></asp:Label>
                                                                        </td>
                                                                        <td style="width: 25%; padding-left: 3px;">
                                                                            <asp:Label ID="lblSiparisAdet" runat="server" Text='<%# Eval("SiparisAdet") %>'></asp:Label>&nbsp;x&nbsp;
                                                                        <asp:Label ID="lblSiparisFiyat" runat="server" Text='<%# Eval("KitapFiyat") %>'></asp:Label>
                                                                            <asp:Label ID="lblSiparisFiyatTL" runat="server" Text="TL"></asp:Label>
                                                                        </td>
                                                                        <td style="width: 25%; padding-left: 3px;">
                                                                            <asp:Label ID="lblSiparisDurum" runat="server" Text='<%# Eval("SiparisDurum") %>'></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </ItemTemplate>
                                                        </asp:DataList>
                                                    </div>
                                                </div>
                                            </div>
                                            <br />
                                            <div class="row navbar-expand-md ml-1">
                                                <br />
                                                <asp:Button CssClass="btn btn-secondary my-1 py-2 ml-auto mr-5" ID="btnlisteyenile" runat="server" Text="Listeyi Yenile" OnClick="btnlisteyenile_Click" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </asp:View>
                            <asp:View ID="ViewOdeme2" runat="server">
                                <div class="row w-100 my-2">
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
                                    <br />
                                    <div class="row navbar-expand-md ml-auto mr-5 mt-4">
                                        <br />
                                        <asp:Button CssClass="btn btn-success my-1 py-2 ml-auto" ID="btnkaydet" runat="server" Text="Bilgileri Kaydet"/>
                                    </div>
                                </div>
                            </asp:View>
                        </asp:MultiView>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
