<%@ Page Title="Kullanıcı - Sipariş Takip" Language="C#" MasterPageFile="~/User/Kullanici.Master" AutoEventWireup="true" CodeBehind="USiparisTakip.aspx.cs" Inherits="ETicaretSitesiStaj.User.USiparisTakip" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .bgmyicerik {
            background-color: #f6f3f5;
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
        <div class="container my-4 bgmyicerik border20p" style="min-height: 306px; border: 2px solid #a1a1a1;">
            <div class="row centerr col-md-5 m-4">
                <nav class="col-md-6 mr-auto ml-auto ">
                    <img src="../images/siparistakip2.png" class="d-inline-block align-content-center align-top" alt="">
                </nav>
            </div>
            <div class="row mr-auto ml-auto col-md-10 mt-4 mr-4 ml-4">
                <nav class="col-md-7 mr-auto ml-auto" style="font: bold 20px arial verdana;">
                    <h1>
                        <p>SİPARİŞ TAKİP SİSTEMİ</p>
                    </h1>

                </nav>
            </div>
            <div class="row mr-auto ml-auto col-md-12 text-center pb-2">
                <p style="font-family: 'Cabin', sans-serif; font-size: 15px;">
                    Müşterilerimizin sitemizde yapacakları alışverişleri sipariş sorgulama sayfası ile sipariş takip numaralarını kullanarak adım adım takip edebilmektedirler.
                    <br />
                    Siparişiniz sonrasında e-posta adresine gönderdiğimiz sipariş numarasını kullanarak siparişinizin kargo sürecini sorgulayabilirsiniz.
                    <br />
                    NOT: Ürünlerimiz, boyut ve ağırlıklarına göre farklı kargo firmaları ile gönderilmektedir..
                </p>
                <div class="row mr-auto ml-auto col-md-5" style="margin-top: 10px;">
                    <div class="input-group">
                        <asp:TextBox CssClass="form-control" ID="txtSiparisNumarası" runat="server" AutoCompleteType="Disabled" TextMode="Search"></asp:TextBox>
                        <asp:Button CssClass="btn btn-success text-uppercase" ID="btnSiparisSorgula" runat="server" Text="SORGULA" OnClick="btnSiparisSorgula_Click" />
                    </div>
                    <div class="input-group mt-1">
                        <asp:Label ID="lblSiparisTakipUyari" runat="server" Text="agasda" ForeColor="red" Visible="true" Font-Size="12"></asp:Label>
                    </div>
                </div>
                <div class="clear"></div>
            </div>
        </div>
    </section>
</asp:Content>
