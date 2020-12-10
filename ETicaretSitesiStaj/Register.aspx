<%@ Page Title="Üye Ol" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="ETicaretSitesiStaj.Register" %>

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

        .borderleft20 {
            border-top-left-radius: 20px;
            border-bottom-left-radius: 20px;
        }

        .borderright20 {
            border-top-right-radius: 20px;
            border-bottom-right-radius: 20px;
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

        .uyeol {
            color: black;
            text-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="m-1">
        <div class="container my-4">
            <div class="row">
                <div class="row shadow bgmyicerik border20p my-2 mx-1" style="border: 2px solid #a1a1a1;">
                    <div class="col-md-5 shadow borderleft20">
                        <div class="col-lg-8 mb-2">
                            <h2 class="uyeol">Üye Olun</h2>
                            <asp:Label ID="lblRegisterBasari" runat="server" Text="."
                                ForeColor="Transparent" Visible="false" Font-Size="15"></asp:Label>
                        </div>
                        <div class="col-lg-12">
                            <div class="form-group">
                                <asp:Label ID="lblRegisterKulAdiN" runat="server" Font-Size="13pt" Text="Adınız *"></asp:Label>
                                <asp:TextBox CssClass="form-control" ID="txtRegisterKulAdiN" runat="server" placeholder="Adınızı giriniz..." AutoCompleteType="Disabled"></asp:TextBox>
                                <asp:Label ID="lblURegisterKulAdiN" runat="server" Text="."
                                    ForeColor="Transparent" Visible="false" Font-Size="10"></asp:Label>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="lblRegisterKulSoyadiN" runat="server" Font-Size="13pt" Text="Soyadınız *"></asp:Label>
                                <asp:TextBox CssClass="form-control" ID="txtRegisterKulSoyadiN" runat="server" placeholder="Soyadınızı giriniz..." AutoCompleteType="Disabled">
                                </asp:TextBox>
                                <asp:Label ID="lblURegisterKulSoyadiN" runat="server" Text="." ForeColor="Transparent" Visible="false" Font-Size="10"></asp:Label>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="lblRegisterKulEpostaN" runat="server" Font-Size="13pt" Text="E-posta Adresiniz *"></asp:Label>
                                <asp:TextBox CssClass="form-control " ID="txtRegisterKulEpostaN" runat="server" placeholder="E-posta adresinizi giriniz..." TextMode="Email" AutoCompleteType="Disabled"></asp:TextBox>
                                <asp:Label ID="lblURegisterKulEpostaN" runat="server" Text="." ForeColor="Transparent" Visible="false" Font-Size="10"></asp:Label>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="lblRegisterKulSifreN" runat="server" Font-Size="13pt" Text="Şifre *"></asp:Label>
                                <asp:TextBox CssClass="form-control" ID="txtRegisterKulSifreN" runat="server" placeholder="Şifrenizi giriniz" AutoCompleteType="Disabled" TextMode="Password"></asp:TextBox>
                                <asp:Label ID="lblURegisterKulSifreN" runat="server" Text="."
                                    ForeColor="Transparent" Visible="false" Font-Size="10"></asp:Label>
                                <div>
                                    <span style="font-size: 15px;">*Minimum 8 Karakter,</span>
                                    <span style="font-size: 15px;">*En az bir büyük harf,</span>
                                    <span style="font-size: 15px;">*En az bir rakam</span>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="lblRegisterKulSifreTekrarN" runat="server" Font-Size="13pt"
                                    Text="Şifre Tekrar *"></asp:Label>
                                <asp:TextBox CssClass="form-control" ID="txtRegisterKulSifreTekrarN" runat="server" placeholder="Şifrenizi tekrar giriniz" AutoCompleteType="Disabled" TextMode="Password"></asp:TextBox>
                                <asp:Label ID="lblURegisterKulSifreTekrarN" runat="server" Text="." ForeColor="Transparent" Visible="false" Font-Size="10"></asp:Label>
                            </div>
                            <div class="form-group">
                                <p>
                                    <asp:CheckBox CssClass="borderuyariicin" ID="CheckBoxuyeliksozlesmeN" runat="server" BorderColor="Transparent" title="Üyelik Sözleşmesi'ni okudum, onaylıyorum." />
                                    <a href="Tasarlanmadi.aspx" id="contractLink1" title="Üyelik Sözleşmesi"><strong>Üyelik Sözleşmesi</strong></a>'ni okudum, onaylıyorum.
                                </p>
                                <span id="registerDateNow" data-today="6.23.2020" style="display: none;"></span>
                                <asp:Label ID="lblUCheckBoxuyeliksozlesmeN" runat="server" Text="." ForeColor="Transparent" Visible="false" Font-Size="10"></asp:Label>
                            </div>
                            <div class="form-group clearfix">
                                <asp:Button CssClass="btn btn-lg btn-warning btn-block text-uppercase" ID="btnRegisterKulUyeOL" runat="server" Text="ÜYE OL" OnClick="btnRegisterKulUyeOL_Click" />
                            </div>
                            <div class="row justify-content-center align-middle">
                                <i class="fas fa-circle mt-2 mr-2" style="font-size: 6px;"></i>
                                <i class="fas fa-circle mt-2 mr-2" style="font-size: 9px;"></i>
                                <i class="fas fa-circle mt-2 mr-2" style="font-size: 12px;"></i>
                                <asp:Label ID="lblor" runat="server" Font-Size="13pt" Text="ya da"></asp:Label>
                                <i class="fas fa-circle mt-2 ml-2" style="font-size: 12px;"></i>
                                <i class="fas fa-circle mt-2 ml-2" style="font-size: 9px;"></i>
                                <i class="fas fa-circle mt-2 ml-2" style="font-size: 6px;"></i>
                            </div>
                            <div class="row justify-content-center" style="margin-bottom: 30px;">
                                <div class="nav navbar" id="girisyapin">
                                    Hesabınız var mı? <a href="~/Login.aspx" class="nav-item nav-link" id="linkgirisyapin" runat="server" style="font: bold 20px arial, verdana; font-style: italic;">Giriş Yapın</a>
                                </div>
                                <asp:Label CssClass="ml-2" ID="lblnot" runat="server" Font-Size="10pt" ForeColor="DarkBlue" Text="NOT: Kayıt işlemi başarılı olursa giriş yap sayfasına yönlendirileceksiniz."></asp:Label>
                                <br />
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2 shadow"></div>
                    <div class="col-md-5 shadow borderright20">
                        <div class="nav navbar navbar-nav">
                            <div class="nav navbar">
                                <br />
                                <br />
                                <br />
                                <h5>Kitabım.com'a Üye Olmanın Avantajları</h5>
                                <br />
                                <br />
                                <br />
                                <br />
                                <ul class="navbar-nav">
                                    <li><span class="fas fa-plus mr-3"></span>Siparişlerinizin tek tıkla takibini yapabilir, tüm siparişlerinizin detaylarına ulaşabilirsiniz.
                                    </li>
                                    <br />
                                    <li><span class="fas fa-plus mr-3"></span>Kişisel bilgilerinizi güncelleyebilirsiniz.
                                    </li>
                                    <br />
                                    <li><span class="fas fa-plus mr-3"></span>Bizimle iletişime daha rahat geçebilirsiniz.
                                    </li>
                                    <br />
                                    <li><span class="fas fa-plus mr-3"></span>Elinizeki kitapları bilgilerini girerek sitemizde satabilirsiniz.</li>
                                    <br />
                                    <li><span class="fas fa-plus mr-3"></span>Seçtiğiniz kitapları favorilerinize ekleyebilirsiniz.</li>
                                    <br />
                                    <li><span class="fas fa-plus mr-3"></span>Seçtiğiniz kitapları favorilerinize ekleyebilirsiniz.</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
