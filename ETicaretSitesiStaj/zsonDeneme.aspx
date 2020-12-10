<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="zsonDeneme.aspx.cs" Inherits="ETicaretSitesiStaj.sonDeneme" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <!-- Slider için gerekli kodlar-->
    <meta http-equiv="content-type" content="text/html;charset=utf-8" />
    
    <script src="slidersJS/jquery.js"></script>
    <script src="slidersJS/amazingslider.js"></script>
    <link rel="stylesheet" type="text/css" href="slidersJS/amazingslider-1.css">
    <script src="slidersJS/initslider-1.js"></script>
    <!--/Slider için gerekli kodlar-->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
    <div class="container">
        <!-- bunları aç sırayla
            https://css3generator.com/
            https://localhost:44334/ProductsPage.aspx
            https://getbootstrap.com/docs/4.0/components/carousel/#with-indicators
            file:///C:/Users/90538/Desktop/slider2/slider.html
            file:///C:/Users/90538/Desktop/son%20slide/slider.html
            https://localhost:44373/sonDeneme.aspx
            https://localhost:44332/KitapDetay.aspx?Kitapid=2
        <!-- Insert to your webpage where you want to display the slider -->
        <div class="amazingslider-wrapper" id="amazingslider-wrapper-1" style="display: block; position: relative; max-width: 900px; margin: 0px auto 0px;">
            <div class="amazingslider" id="amazingslider-1" style="display: block; position: relative; margin: 0 auto;">
                <ul class="amazingslider-slides" style="display: none;">
                    <li>
                        <img src="imagesslide/birnefesgibi.png" alt="birnefesgibi" title="Bir Nefes Gibi" data-description="Yazarı: Ferzan Özpetek <br/>Kategorisi: Roman <br/>Yayınevi: Can Yayınları <br/>Puanı : 4.25 <br/>Fiyatı: 17.59 TL<br/><br/>" />ahasdasad
                        <a href="deneme.aspx" class="btn btn-outline-info" target="_blank">
                            <button class="amazingsliderbutton btn" disabled="disabled" style="width: 1px;"></button>
                            Detaylar
                            <button class="amazingsliderbutton btn" disabled="disabled" style="width: 1px;"></button>
                        </a>
                    </li>
                    <li>
                        <img src="imagesslide/simyaci.png" alt="simyaci" title="Simyacı" data-description="Yazarı: Paulo Coelho <br/>Kategorisi: Roman <br/>Yayınevi: Can Yayınları <br/>Puanı : 3.75 <br/>Fiyatı: 24.99 TL<br/><br/>" />
                        <a href="deneme.aspx" class="btn btn-outline-info" target="_blank">
                            <button class="amazingsliderbutton btn" disabled="disabled" style="width: 1px;"></button>
                            Detaylar
                            <button class="amazingsliderbutton btn" disabled="disabled" style="width: 1px;"></button>
                        </a>
                    </li>
                    <li>
                        <img src="imagesslide/ucurtmaavcisi.png" alt="ucurtmaavcisi" title="Uçurtma Avcısı" data-description="Yazarı: Khaled Hosseini <br/>Kategorisi: Roman <br/>Yayınevi: Everest Yayınları <br/>Puanı : 3.0 <br/>Fiyatı: 23.45 TL<br/><br/>" />
                        <a href="deneme.aspx" class="btn btn-outline-info" target="_blank">
                            <button class="amazingsliderbutton btn" disabled="disabled" style="width: 1px;"></button>
                            Detaylar
                            <button class="amazingsliderbutton btn" disabled="disabled" style="width: 1px;"></button>
                        </a>
                    </li>
                    <li>
                        <img src="imagesslide/yuzunlerinefendisi1.png" alt="yuzunlerinefendisi1sssss" title="Yüzüklerin Efendisi I" data-description="Yazarı: J.R.R. Tolkien <br/>Kategorisi: Roman <br/>Yayınevi: Metis Yayıncılık <br/>Puanı : 4.75 <br/>Fiyatı: 51.20 TL<br/><br/>" />
                        <a href="deneme.aspx" class="btn btn-outline-info" target="_blank">
                            <button class="amazingsliderbutton btn" disabled="disabled" style="width: 1px;"></button>
                            Detaylar
                            <button class="amazingsliderbutton btn" disabled="disabled" style="width: 1px;"></button>
                        </a>
                    </li>
                </ul>
                <ul class="amazingslider-thumbnails" style="display: none;">
                    <li>
                        <img src="imagesslide/birnefesgibi-tn.png" alt="birnefesgibi" title="Bir Nefes Gibi" /></li>
                    <li>
                        <img src="imagesslide/simyaci-tn.png" alt="simyaci" title="Simyacı" /></li>
                    <li>
                        <img src="imagesslide/ucurtmaavcisi-tn.png" alt="ucurtmaavcisi" title="Uçurtma Avcısı" /></li>
                    <li>
                        <img src="imagesslide/yuzunlerinefendisi1-tn.png" alt="yuzunlerinefendisi1" title="Yüzüklerin Efendisi I" /></li>
                </ul>
            </div>
        </div>
        <!-- End of body section HTML codes -->
    </div>
    </section>
</asp:Content>
