<%@ Page Title="Kullanıcı - Kitap Detayı" Language="C#" MasterPageFile="~/User/Kullanici.Master" AutoEventWireup="true" CodeBehind="UKitapDetay.aspx.cs" Inherits="ETicaretSitesiStaj.User.UKitapDetay" %>

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
        <!-- kitabın karetorilerie giden yol-->
        <div class="container my-4">
            <div class="row bgmyfilter border20p shadow">
                <div class="row navbar-expand-md mx-2 my-1">
                    <asp:DataList RepeatDirection="Horizontal" RepeatColumns="1" ID="DataListyolu" runat="server">
                        <ItemTemplate>
                            <div class="row m-2" style="text-align: center; align-content: center; word-break: break-word;">
                                <table class="form-signin">
                                    <tr>
                                        <td>
                                            <a class="bk" href="UAnasayfa.aspx" title="Anasayfa ">
                                                <asp:Label ID="Labelanasayfa" runat="server" Font-Bold="true" Font-Size="Medium" Text="Anasayfa"></asp:Label>
                                                >
                                            </a>
                                        </td>
                                        <td><a class="bk" href="UKitaplar.aspx?liste=0&sira=0" title="Kitaplar">
                                            <asp:Label ID="Labelkitaplar" runat="server" Font-Bold="true" Font-Size="Medium" Text=" Kitaplar "></asp:Label>
                                            >
                                        </a>
                                        </td>
                                        <td>
                                            <a class="bk" href="UKategoriler.aspx?kat=<%# Eval("KitapKategoriid") %> ">
                                                <asp:Label ID="Labelkategoriad" runat="server" Text='<%# Eval("KategoriAdi") %>' Font-Bold="true" Font-Size="Medium"></asp:Label>
                                            </a>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </ItemTemplate>
                    </asp:DataList>
                </div>
            </div>
        </div>
    </section>
    <section>
        <div class="container py-1">
            <div class="row bgmyicerik border20p shadowcart" style="border: 2px solid #a1a1a1;">
                <div class="navbar-nav col-md-5 m-1 ml-4 mr-5">
                    <div class="row navbar-expand-md m-1 shadow justify-content-center" style="border: 1px solid black;">
                        <div class="row navbar-expand-md shadow m-1">
                            <asp:DataList RepeatDirection="Horizontal" RepeatColumns="1" ID="DataListKitapResim" runat="server">
                                <ItemTemplate>
                                    <div class="row m-1" style="text-align: center; align-content: center; word-break: break-word;">
                                        <img class="card-img-top" src='<%# Eval("KitapResim") %>' alt="Card image" style="max-width: 380px; max-height: 400px;" runat="server" />
                                    </div>
                                </ItemTemplate>
                            </asp:DataList>
                        </div>
                    </div>
                </div>
                <div class="navbar-nav col-md-6 m-1">
                    <div class=" container-fluid navbar-expand-md m-1 shadow justify-content-center" style="border: 1px solid black;">
                        <div class="row navbar-expand-md shadow m-1">
                            <asp:DataList RepeatDirection="Horizontal" RepeatColumns="4" ID="DataListKitapDetay" runat="server">
                                <ItemTemplate>
                                    <div class="card m-1 bg-transparent" style="min-height: 400px; width: 500px; word-break: break-word;">
                                        <table class="form-signin ml-2 bg-transparent">
                                            <tr>
                                                <td style="word-break: break-word;">
                                                    <asp:Label ID="lblTumKitapAdi" runat="server" Font-Bold="true" Font-Size="40" Text='<%# Eval("KitapAdi") %>'></asp:Label>
                                                    </a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="word-break: break-all; height: 35px;">
                                                    <asp:Label ID="Label1" runat="server" Font-Size="13" Text="Yazar: "></asp:Label>
                                                    <a class="bk" href="UYazarlar.aspx?yaz=<%# Eval("KitapYazarid") %>">
                                                        <asp:Label ID="lblTumYazarAdi" runat="server" Font-Bold="true" Font-Size="15" Text='<%# Eval("YazarAdiSoyadi") %>'></asp:Label>
                                                    </a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="word-break: break-all; height: 35px;">
                                                    <asp:Label ID="Label2" runat="server" Font-Size="13" Text="Yayınevi: "></asp:Label>
                                                    <a class="bk" href="UYayinevleri.aspx?yev=<%# Eval("KitapYayineviid") %>">
                                                        <asp:Label ID="lblTumYayineviAdi" runat="server" Font-Bold="true" Font-Size="15" Text='<%# Eval("YayineviAdi") %>'></asp:Label>
                                                    </a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="word-break: break-all; height: 35px;">
                                                    <asp:Label ID="Label8" runat="server" Font-Size="13" Text="Açıklama: "></asp:Label>
                                                    <asp:Label ID="Label9" runat="server" Font-Size="11" Text='<%# Eval("KitapAciklama") %>'></asp:Label>
                                                    </a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="word-break: break-all; height: 35px;">
                                                    <table>
                                                        <tr style="text-align: right;">
                                                            <td>
                                                                <span class="fas fa-star" style="color: yellow"></span>
                                                                <asp:Label ID="lblTumKitapPuani" runat="server" Text='<%# Eval("KitapOrtalamaPuani") %>'></asp:Label>
                                                                <asp:Label ID="Label4" runat="server" Text="/ 5 "></asp:Label>
                                                            </td>
                                                            <td>
                                                                <a href="#" id="yorumyap"></a>
                                                                <a class="btn btn-link" href="#yorumyap">Yorum Yap
                                                                </a>
                                                                <a class="btn btn-link" href="#yorumyap">Puan Ver
                                                                </a>
                                                                <a class="btn btn-link" href="#">Favorilere Ekle
                                                                </a>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr class="ml-4">
                                                <td style="word-break: break-all;">
                                                    <table>
                                                        <tr>
                                                            <td style="text-align: ">
                                                                <table>
                                                                    <tr>
                                                                        <td>
                                                                            <asp:Label ID="Label6" CssClass="ml-auto" runat="server" ForeColor="Transparent" Text="..."></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <button class="btn-light border20p" style="border:1px solid black; width:35px; height:35px;"><i class="fas fa-minus"></i></button>
                                                                            <asp:TextBox CssClass="centerr" ID="txtAdet" runat="server" Text="1" Width="25"></asp:TextBox>
                                                                            <button class="btn-light border20p" style="border:1px solid black; width:35px; height:35px;"><i class="fas fa-plus"></i></button>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                            <td>
                                                                <asp:Label ID="Label7" CssClass="ml-auto" runat="server" ForeColor="Transparent" Text="..."></asp:Label></td>
                                                            <td class="auto-style2">
                                                                <asp:Label ID="lblTumKitapFiyati" runat="server" Font-Size="30" Text='<%# Eval("KitapFiyat") %>'></asp:Label>
                                                                <asp:Label ID="lblTumKitapFiyatTL" runat="server" Text="TL"></asp:Label>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                                <td>
                                                    <asp:Label ID="Label5" runat="server" ForeColor="Transparent" Text="....."></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="word-break: break-all; height: 20px;">
                                                    <div class="navbar navbar-nav navbar-expand-md navbar-dark">
                                                        <asp:Button CssClass="btn btn-outline-success btn-block mx-1 mt-2" ID="btnSepeteEkle" Style="text-align: center;" runat="server" title="SEPETE EKLE" Text="SEPETE EKLE" OnClick="btnSepeteEkle_Click"/>
                                                        <a class="btn btn-outline-success btn-block mx-1 mt-2" href="UKitapSatinal.aspx?Kitapid=<%# Eval("Kitapid") %>&islem=0" title="SATIN AL">SATIN AL</a>
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
            </div>
        </div>
    </section>
    <!--yorum kısmı -->
    <section class="my-2">
        <div class="container">
            <div class="row bgmyicerik border20p shadowcart" style="border: 2px solid #a1a1a1;">
                <div class="navbar-nav col-md-12 m-1 my-2">
                    <section>
                        <div class="row mx-1 w-100">
                            <div class="navbar-nav col-lg-12 centerr w-100 ml-2">
                                <hr style="border: 1px solid gray;" />
                                <asp:Label CssClass="mx-1" ID="Label11" runat="server" Text="Yorumlar" Font-Bold="true" Font-Italic="true" Font-Size="20"></asp:Label>
                                <hr style="border: 1px solid gray;" />
                            </div>
                        </div>
                        <table>
                            <tr>
                                <td>
                                    <div class="col-md-4 pl-1">
                                        <table style="border: 1px solid black; min-width: 320px; min-height: 155px;">
                                            <tr>
                                                <td>
                                                    <table style="border: 1px solid black; text-align: center; margin-left: 14px;">
                                                        <tr>
                                                            <td>
                                                                <asp:ImageButton ID="imgbtn0" runat="server" Width="25" Height="25" ForeColor="black" BackColor="Red" Style="margin: 1px;" ImageUrl="~/images/bosyildiz2.png" title="0" OnClick="imgbtn0_Click" />
                                                            </td>
                                                            <td>
                                                                <asp:ImageButton ID="imgbtn01" runat="server" Width="25" Height="25" ForeColor="black" BackColor="Red" ImageUrl="~/images/yarimyildiz2.png" title="0.5" OnClick="imgbtn01_Click" />
                                                            </td>
                                                            <td>
                                                                <asp:ImageButton ID="imgbtn1" runat="server" Width="25" Height="25" ForeColor="black" BackColor="Red" Style="margin: 1px;" ImageUrl="~/images/tamyildiz2.png" title="1" OnClick="imgbtn1_Click" />
                                                            </td>
                                                            <td>
                                                                <asp:ImageButton ID="imgbtn12" runat="server" Width="25" Height="25" ForeColor="black" BackColor="Red" ImageUrl="~/images/yarimyildiz2.png" title="1.5" OnClick="imgbtn12_Click" />
                                                            </td>
                                                            <td>
                                                                <asp:ImageButton ID="imgbtn2" runat="server" Width="25" Height="25" ForeColor="black" BackColor="Red" Style="margin: 1px;" ImageUrl="~/images/tamyildiz2.png" title="2" OnClick="imgbtn2_Click"/>
                                                            </td>
                                                            <td>
                                                                <asp:ImageButton ID="imgbtn23" runat="server" Width="25" Height="25" ForeColor="black" BackColor="Red" ImageUrl="~/images/yarimyildiz2.png" title="2.5" OnClick="imgbtn23_Click"/>
                                                            </td>
                                                            <td>
                                                                <asp:ImageButton ID="imgbtn3" runat="server" Width="25" Height="25" ForeColor="black" BackColor="Red" Style="margin: 1px;" ImageUrl="~/images/tamyildiz2.png" title="3" OnClick="imgbtn3_Click"/>
                                                            </td>
                                                            <td>
                                                                <asp:ImageButton ID="imgbtn34" runat="server" Width="25" Height="25" ForeColor="black" BackColor="Red" ImageUrl="~/images/yarimyildiz2.png" title="3.5" OnClick="imgbtn34_Click"/>
                                                            </td>
                                                            <td>
                                                                <asp:ImageButton ID="imgbtn4" runat="server" Width="25" Height="25" ForeColor="black" BackColor="Red" Style="margin: 1px;" ImageUrl="~/images/tamyildiz2.png" title="4" OnClick="imgbtn4_Click"/>
                                                            </td>
                                                            <td>
                                                                <asp:ImageButton ID="imgbtn45" runat="server" Width="25" Height="25" ForeColor="black" BackColor="Red" ImageUrl="~/images/yarimyildiz2.png" title="4.5" OnClick="imgbtn45_Click"/>
                                                            </td>
                                                            <td>
                                                                <asp:ImageButton ID="imgbtn5" runat="server" Width="25" Height="25" ForeColor="black" BackColor="Red" Style="margin: 1px;" ImageUrl="~/images/tamyildiz2.png" title="5" OnClick="imgbtn5_Click"/>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>0</td>
                                                            <td>0.5</td>
                                                            <td>1</td>
                                                            <td>1.5</td>
                                                            <td>2</td>
                                                            <td>2.5</td>
                                                            <td>3</td>
                                                            <td>3.5</td>
                                                            <td>4</td>
                                                            <td>4.5</td>
                                                            <td>5</td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <table>
                                                        <tr>
                                                            <td style="text-align: center; font-size: large;">Yukarıda bilgileri görüntülenen kitap için değerlendirmenizi yapabilirsiniz.</td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </td>
                                <td style="border: 1px solid black; min-width: 300px;">
                                    <div class="col-md-12 pl-1" style="margin-left: 2px;">
                                        <table style="min-width: 400px; min-height: 153px;">
                                            <tr>
                                                <td>
                                                    <table>
                                                        <tr>
                                                            <td>
                                                                <asp:TextBox CssClass="form-control m-1" ID="txtyorumicerik" runat="server" BorderStyle="Solid" BorderWidth="1" BorderColor="LimeGreen" Height="135" Width="650" AutoCompleteType="Disabled" Text="" placeholder="Yorumunuzu buraya yazınız..." TextMode="MultiLine"></asp:TextBox>
                                                            </td>
                                                            <td style="width: 100px;">
                                                                <asp:Button CssClass="btn btn-success shadow mr-1" ID="btnyorumyap" runat="server" Style="width: 100px; text-align: center;" title="Yorum Yap" Text="Yorum Yap" OnClick="btnyorumyap_Click"/>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </section>
                    <section>
                        <div class="row navbar-expand-md m-1 w-100" style="border: 1px solid black; min-height: 100px;">
                            <div class="row m-1 w-100">
                                <div class="navbar-nav col-md-12">
                                    <asp:Label CssClass="mx-1" ID="lblyorumsayisi" runat="server" Text="." Font-Italic="true" Visible="false"></asp:Label>
                                    <asp:DataList CssClass="w-100" RepeatDirection="Horizontal" RepeatColumns="1" ID="DataListYorumlar" runat="server">
                                        <ItemTemplate>
                                            <div class="row m-2 w-100" style="border: 1px solid black; word-break: break-word;">
                                                <table class="form-signin m-2 mb-3">
                                                    <tr>
                                                        <td>
                                                            <div class=" float-left ">
                                                                Yorum Yapan:&nbsp;<asp:Label ID="LabelkullaniciadiY" runat="server" Font-Bold="true" Font-Size="Large" Text='<%# Eval("adsoyad") %>'></asp:Label>

                                                            </div>
                                                            &nbsp;&nbsp;&nbsp;
                                                            <div class=" float-right ">
                                                                Yorum Tarihi:&nbsp;<asp:Label ID="labelyorumtarih" runat="server" Text='<%# Eval("YorumTarihi") %>'></asp:Label>
                                                            </div>
                                                            <hr />
                                                        </td>
                                                    </tr>

                                                    <tr>
                                                        <td>Yorum İçerik: &nbsp;<asp:Label ID="Labelkategoriad" runat="server" Text='<%# Eval("Yorumicerik") %>' Font-Bold="true" Font-Size="Medium"></asp:Label>
                                                            </a>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </ItemTemplate>
                                    </asp:DataList>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
