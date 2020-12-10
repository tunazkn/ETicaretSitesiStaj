<%@ Page Title="Admin Giriş Yap" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="ETicaretSitesiStaj.AdminLogin" %>

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

        .shadow {
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
        }

        .girisyap {
            color: black;
            text-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
        }

        .borderuyariicin {
            border: 1px solid white;
        }

        div #girisyapin .nav-link {
            color: orange;
        }
            /*!important yazarsan kırmızı oluyor ama hoverı gidiyor*/
            div#girisyapin .nav-link:hover {
                color: green !important;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="m-1">
        <div class="container my-4">
            <div class="row">
                <div class="row shadow bgmyicerik border20p my-2 mx-1" style="border: 2px solid #a1a1a1;">
                    <div class="col-md-6 col-lg-5 shadow borderleft20">
                        <div class="col-lg-8 mb-2" style="min-width:300px;">
                            <h2 class="girisyap">Admin Girişi Yapın</h2>
                            <asp:Label ID="lblLoginUyari" runat="server" Text="."
                                ForeColor="Transparent" Visible="false" Font-Size="13"></asp:Label>
                        </div>
                        <div class="col-lg-12">
                            <div class="form-group">
                                <asp:Label ID="lblLoginEposta" runat="server" Font-Size="13pt" Text="E-Posta Adresi"></asp:Label>
                                <asp:TextBox CssClass="form-control" ID="txtLoginAdminEposta" runat="server" placeholder="E-Posta Adresinizi Giriniz..." title="Sisteme kayıtlı olan mail adresinizi yazınız!" AutoCompleteType="Disabled"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="lblLoginAdminSifre" runat="server" Font-Size="13pt" Text="Şifre"></asp:Label>
                                <asp:TextBox CssClass="form-control" ID="txtLoginAdminSifre" runat="server"
                                    placeholder="Şifrenizi giriniz..." title="Lütfen şifrenizi giriniz!" TextMode="Password" AutoCompleteType="Disabled">
                                </asp:TextBox>
                            </div>
                            <div class="row form-group mx-2">
                                <div class="mr-auto">
                                    <p>
                                    </p>
                                </div>
                                <div class="ml-auto">
                                </div>
                            </div>
                            <div class="form-group clearfix">
                                <asp:Button CssClass="btn btn-lg btn-warning btn-block text-uppercase" ID="btnAdminLoginAdminGirisYap" runat="server" Text="GİRİŞ YAP" OnClick="btnAdminLoginAdminGirisYap_Click" />
                                <asp:Label ID="lblULoginAdminGiris" runat="server" Text="." ForeColor="Transparent" Visible="false" Font-Size="10"></asp:Label>
                            </div>
                            <div class="clear"></div>

                        </div>
                    </div>
                    <div class="col-md-2 col-lg-2 shadow"></div>
                    <div class="col-md-4 col-lg-5 shadow borderright20">
                        <div class="nav navbar navbar-nav">
                            <div class="nav navbar" style="color:transparent;">
                                <br />
                                <br />
                                <br />
                                <h5>Kitabım.com'a Üye Olmanın Avantajları</h5>
                                <br />
                                <br />
                                <br />
                                <br />
                                <ul class="navbar-nav">
                                    <li><span class="fas fa-plus mr-3"></span>Siparişlerinizin takibini yapabilir, tüm siparişlerinizin detaylarına ulaşabilirsiniz.
                                    </li>
                                    <br />
                                    <li><span class="fas fa-plus mr-3"></span>Kişisel bilgilerinizi güncelleyebilirsiniz
                                    </li>
                                    <br />
                                    <li><span class="fas fa-plus mr-3"></span>Şiparişlerinizi tek tıkla takip edebilirsiniz
                                    </li>
                                    <br />
                                    <li><span class="fas fa-plus mr-3"></span>Sevdiklerinize hediye çekleri gönderebilirsiniz
                                    </li>
                                    <br />
                                    <li><span class="fas fa-plus mr-3"></span></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
