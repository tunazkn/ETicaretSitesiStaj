<%@ Page Title="Admin - Hesabım" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AHesabim.aspx.cs" Inherits="ETicaretSitesiStaj.Admin.AHesabim" %>

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
                                                        <asp:Label ID="lblAdminadi" runat="server" Text="" Font-Bold="true" Font-Size="X-Large"></asp:Label>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <!-- yandaki bilgilerim siperislerim listesi-->
                        <div class="row col-md-8 navbar-expand-md my-2 ml-2">
                            <table class="w-100 h-100">
                                <tr class="centerr">
                                    <td>
                                        <asp:Button CssClass="btn btn-link w-100 h-100 border-0 text-dark" ID="btnBilgilerim" Style="border: 1px solid black; text-align: center;" runat="server" Font-Size="20" title="Bilgilerim" Text="Bilgilerim" />
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <div class="row col-md-12 navbar-expand-md m-2">
                        <div class="row w-100 my-2">
                            <table class="form-signin ml-2">
                                <tr>
                                    <td style="padding-top: 9px; width: 50%;" colspan="2">Adı Soyadı:&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="pr-5" style="padding-top: 9px; margin-top: 15px;" colspan="2">
                                        <asp:TextBox CssClass="form-control mt-2" ID="txtAdminAdi" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="padding-top: 20px;">Mail:&nbsp;</td>
                                    <td style="padding-top: 20px;">Telefon:&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="pr-5" style="padding-top: 9px;">
                                        <asp:TextBox CssClass="form-control mt-2" ID="txtAdminMail" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                                    </td>
                                    <td class="pr-5" style="padding-top: 9px; margin-top: 15px;">
                                        <asp:TextBox CssClass="form-control mt-2" ID="txtAdminTel" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td style="padding-top: 20px;">
                                        <asp:Button CssClass="btn btn-success btn-block my-1 py-2 ml-auto mr-5" ID="btnAdminGüncelle" runat="server" Width="300" Text="Güncelle" />
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
