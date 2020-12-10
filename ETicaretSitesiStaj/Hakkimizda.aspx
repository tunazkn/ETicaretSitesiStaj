<%@ Page Title="Hakkımızda" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="Hakkimizda.aspx.cs" Inherits="ETicaretSitesiStaj.Hakkimizda" %>

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

        .shadow {
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="m-1">
        <div class="container my-4">
            <div class="row">
                <div class="row shadow bgmyicerik border20p my-2 mx-1 px-5 py-3" style="border: 2px solid #a1a1a1;">
                    <h4>Biz Kimiz? </h4>
                    <p>
                        İddia ediyoruz, en “taze eserler” burada!
                        <br />
                        Bol vitaminli, sağlıklı; bir o kadar eğlenceli, eğlenceli olduğu kadar da çeşitli… Yerli yazarı da burada, yabancısı da… Aşk da var, hüzün de…
                        <br />
                        Aksiyondan aksiyona sıçrarken fantastik dünyalarda soluklanacak, aşka, hayata ve dostluğa yeni bir bakışla yaklaşacak, iç dünyanın kapılarını aralayacak, polisiyenin peşinde koştururken seriden seriye atlayacak, “yok artık” dedirtecek kahramanların maceralarına ortak olacaksın.
                        <br />
                        Burada yazarlar yeni, burada ekip genç, burada sen varsın!
                        <br />
                        Senin kitaplığın…
                        <br />
                        Yeni bir yıla girerken trend belirleyen ve trendi takip eden kitaplarla yepyeni bir yola çıkıyoruz.
                        <br />
                        Tek gayemiz size ulaşacak “iyi kitap” sayısını artırmak…
                        <br />
                        Biz yerli/yabancı yazarları okurlarıyla buluşturan, yeni yazarlara da kapısını daima açık tutan yeni kütüphaneyiz…
                        <br />
                        Aynı zamanda sizlerin sunacağı kitapları satmaya hazır olan bir kütüphaneyiz…
                    </p>
                    <h4>Neden Kitabım.com? </h4>
                    <p>
                        Sağlıklı! Günlük hayatın, sınavların, işlerin koşturmacasına küçük bir mola; ruhuna şifa…
                        <br />
                        Çeşitli! Polisiye de var, aşk da… Tarih de var, fantazya da… Maneviyat da var, aksiyon da…
                        <br />
                        Dilim dilim! Okudukça paylaşmak, arkadaşlarına da okutmak isteyeceksin.
                        <br />
                        Elden ele yayılacak avuçlarındaki kitap kokusu…
                        <br />
                        Mottomuz, “Taze Eser!”
                        <br />
                        Biz avuçlarımızda kitap kokusu; her daim taze, her daim enerjik ve samimi, her daim erişilebilir kitaplarımızla yeni neslin kütüphanesiyiz.
                    </p>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
