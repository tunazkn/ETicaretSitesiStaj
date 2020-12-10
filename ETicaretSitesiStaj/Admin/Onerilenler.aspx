<%@ Page Title="Admin - Müşteri Kitapları" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Onerilenler.aspx.cs" Inherits="ETicaretSitesiStaj.Admin.Onerilenler" %>

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
                <div class="navbar navbar-nav navbar-expand-md navbar-dark col-md-12 mb-2">
                    <div class="row shadow ml-1 bgmyicerik border20p w-100" style="min-height: 410px; border: 2px solid #a1a1a1; word-break: break-all;">
                        <div class="row navbar-expand-md m-2 w-100" style="min-height: 322px; border: 1px solid black;">
                            <asp:DataList CssClass="bg-light" RepeatDirection="Horizontal" RepeatColumns="3" ID="DataListoner" runat="server">
                                <ItemTemplate>
                                    <div class="row m-1 shadow w-100" style="text-align: center; align-content: center; word-break: break-word;">
                                        <table class="form-signin ml-2 mr-3">
                                            <tr>
                                                <td style="text-align: right;">Kitabın Adı:</td>
                                                <td>
                                                    <asp:Label ID="lblKitapAdi" runat="server" Font-Bold="true" Text='<%# Eval("OKitapAdi") %>'></asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td style="text-align: right;">Kitapın Açıklaması:</td>
                                                <td>
                                                    <asp:Label ID="Label3" runat="server" Font-Bold="true" Text='<%# Eval("OKitapAciklama") %>'></asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td style="text-align: right;">Kitap Fiyat:</td>
                                                <td>
                                                    <asp:Label ID="Label1" runat="server" Font-Bold="true" Text='<%# Eval("OKitapFiyat") %>'></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="text-align: right;">Resim Yolu:</td>
                                                <td class="mt-2">
                                                    <asp:Label ID="Label4" runat="server" Font-Bold="true" Text='<%# Eval("OKitapResim") %>'></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="text-align: right;">Kitap Kategorisi:</td>
                                                <td>
                                                    <asp:Label ID="Label5" runat="server" Font-Bold="true" Text='<%# Eval("OKitapKategoriAdi") %>'></asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td style="text-align: right;">Kitap Yazarı:</td>
                                                <td>
                                                    <asp:Label ID="Label6" runat="server" Font-Bold="true" Text='<%# Eval("OKitapYazarAdi") %>'></asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td style="text-align: right;">Kitap Yayınevi:</td>
                                                <td>
                                                    <asp:Label ID="Label7" runat="server" Font-Bold="true" Text='<%# Eval("OKitapYayineviAdi") %>'></asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td class="px-2" colspan="2">
                                                    <a class="bk btn btn-block py-2 btn-success" href='OnerilenOnayla.aspx?Kitid=<%# Eval("OKitapid") %>' title="Kontrol Et">
                                                        <asp:Label ID="lblKitapAdi2" runat="server" Font-Bold="true" Font-Size="11" Text="Kontrol Et"></asp:Label>
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
            </div>
        </div>
    </section>
</asp:Content>
