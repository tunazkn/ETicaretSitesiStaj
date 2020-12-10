<%@ Page Title="Üye Master Page Menu ve Footer" Language="C#" MasterPageFile="~/User/Kullanici.Master" AutoEventWireup="true" CodeBehind="Masterpage2.aspx.cs" Inherits="ETicaretSitesiStaj.User.Masterpage2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .border20p {
            border-radius: 20px 20px;
        }

        .bgmyicerik {
            background-color: #f6f3f5;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="m-1">
        <div class="container my-4">
            <div class="row">
                <div class="row shadow bgmyicerik border20p my-2 mx-1 py-3 w-100" style="border: 2px solid #a1a1a1;">
                    <div class="col-lg-12">
                        Üye Master Page Örnek Görüntüsü 
                        <br />(Burası Sayfaların İçeriklerinin Bulunduğu Kısım)
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
