<%@ Page Title="Admin - Anasayfa" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AAnasayfa.aspx.cs" Inherits="ETicaretSitesiStaj.Admin.AAnasayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="my-5">
        <div style="height: 150px; width: 700px; margin-left: 300px; background-color: #ce7171;">
            <asp:Image ID="Image1" runat="server" Height="149px" ImageUrl="~/images/admin-banner.png" Width="699px" />
        </div>
        <br />
        <br />
        <div class="justify-content-center text-center">
            <asp:Label ID="Label1" runat="server" ForeColor="Black" Font-Bold="true" Font-Size="30" Text="Yönetici Sayfasına Hoş Geldiniz..."></asp:Label>
        </div>
    </section>
</asp:Content>
