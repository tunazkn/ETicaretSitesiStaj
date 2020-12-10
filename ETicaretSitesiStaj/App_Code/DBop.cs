using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ETicaretSitesiStaj
{
    public class DBop
    {
        static string connectionString = @"Data Source=DESKTOP-8OMH2KA\SQLEXPRESS;Initial Catalog=Dbo_ETicaret2;Integrated Security=True";

        static SqlConnection connection = new SqlConnection(connectionString);


        public static DataSet getAllBooks(string orderby, string sira)
        {
            string sql = "SELECT Tbl_Kitaplar.Kitapid, KitapAdi, KitapAciklama, " +
                " CAST(KitapFiyat as DECIMAL(10,2)) as KitapFiyat, KitapResim, " +
                "CAST(KitapOrtalamaPuani as DECIMAL(4,2)) as KitapOrtalamaPuani, Tbl_Yazarlar.YazarAdiSoyadi, " +
                "Tbl_Kategoriler.KategoriAdi, Tbl_Yayinevleri.YayineviAdi, " +
                "(select COUNT(*) FROM Tbl_Kitaplar) AS ToplamKitapSayisi FROM Tbl_Kitaplar " +
                "INNER JOIN Tbl_Kategoriler ON " +
                "Tbl_Kitaplar.KitapKategoriid = Tbl_Kategoriler.Kategoriid " +
                "INNER JOIN Tbl_Yazarlar ON " +
                "Tbl_Kitaplar.KitapYazarid = Tbl_Yazarlar.Yazarid " +
                "INNER JOIN Tbl_Yayinevleri ON " +
                "Tbl_Yayinevleri.Yayineviid = Tbl_Kitaplar.KitapYayineviid " +
                "ORDER BY " + orderby + " " + sira + " ";

            SqlCommand command = new SqlCommand(sql, connection);
            DataSet result = new DataSet();
            SqlDataAdapter adaptor = new SqlDataAdapter(command);
            connection.Close();
            connection.Open();
            adaptor.Fill(result);
            connection.Close();
            return result;
        }
        public static DataSet getKitapDetay(string kitapid)
        {
            string sql = "SELECT Tbl_Kitaplar.Kitapid, KitapAdi, KitapAciklama, " +
                " CAST(KitapFiyat as DECIMAL(10,2)) as KitapFiyat, " +
                "KitapResim, KitapKategoriid, KitapYazarid, KitapYayineviid, " +
                "CAST(KitapOrtalamaPuani as DECIMAL(4,2)) as KitapOrtalamaPuani, " +
                "Tbl_Yazarlar.YazarAdiSoyadi, Tbl_Kategoriler.KategoriAdi, " +
                "Tbl_Yayinevleri.YayineviAdi FROM Tbl_Kitaplar " +
                "INNER JOIN Tbl_Kategoriler ON " +
                "Tbl_Kitaplar.KitapKategoriid = Tbl_Kategoriler.Kategoriid " +
                "INNER JOIN Tbl_Yazarlar ON " +
                "Tbl_Kitaplar.KitapYazarid = Tbl_Yazarlar.Yazarid " +
                "INNER JOIN Tbl_Yayinevleri ON " +
                "Tbl_Yayinevleri.Yayineviid = Tbl_Kitaplar.KitapYayineviid " +
                "WHERE Tbl_Kitaplar.Kitapid = @kitid ORDER BY Tbl_Kitaplar.Kitapid";
            SqlCommand command = new SqlCommand(sql, connection);
            command.Parameters.AddWithValue("@kitid", kitapid);
            DataSet result = new DataSet();
            SqlDataAdapter adaptor = new SqlDataAdapter(command);
            connection.Close();
            connection.Open();
            adaptor.Fill(result);
            connection.Close();
            return result;
        }
        /*alttaki düzenlenecek arama kısmı için, dropdown ların hepsi gönderilecek boş olan işleme girmeyecek */
        public static DataSet Search(string kitapAdi, string yazarAdi, string katAdi, string yevAdi, string fminmax)
        {
            /**
            string sg = "AND Subgroups.SGID = " + sgid + " ";
            string b = "AND Brands.BID = " + bid + " ";
            string et = "AND Enginetypes.EID = " + etid + " ";
            string s = "AND Series.SID = " + sid + " ";

            if (sgid != -1) 
            {
                sql = sql + sg; 
            }
            else if (bid != -1) 
            {
                sql = sql + b; 
            }
            else if (etid != -1)
            { 
                sql = sql + et; 
            }
            else if (sid != -1) 
            {
                sql = sql + s; 
            }**/

            string t0 = "", t1 = "", t2 = "", t3 = "", a0 = "", a1 = "", a2 = "", where = "";
            int count = 0;
            Boolean x0 = false, x1 = false, x2 = false, x3 = false;

            if (kitapAdi != "--Seç--")
            {
                t0 = " KitapAdi = '" + kitapAdi + "' ";
                count += 1;
                x0 = true;
            }
            if (yazarAdi != "--Seç--")
            {
                t1 = " YazarAdiSoyadi = '" + yazarAdi + "' ";
                count += 1;
                x1 = true;
            }
            if (katAdi != "--Seç--")
            {
                t2 = " KategoriAdi = '" + katAdi + "' ";
                count += 1;
                x2 = true;
            }
            if (yevAdi != "--Seç--")
            {
                t3 = " YayineviAdi = '" + yevAdi + "' ";
                count += 1;
                x3 = true;
            }
            if (count != 0)
            {
                where = " WHERE ";
                if (count == 2)
                {
                    if (x0 == true && x1 == true)
                        a0 = " AND ";
                    else if (x0 = true && x2 == true)
                        a1 = " AND ";
                    else if (x0 = true && x3 == true)
                        a2 = " AND ";
                    else if (x1 == true && x2 == true)
                        a1 = " AND ";
                    else if (x1 == true && x3 == true)
                        a2 = " AND ";
                    else if (x2 == true && x3 == true)
                        a2 = " AND ";
                }
                if (count == 3)
                {
                    if (x0 == true && x1 == true && x2 == true)
                    {
                        a0 = " AND ";
                        a1 = " AND ";
                    }
                    else if (x0 == true && x1 == true && x3 == true)
                    {
                        a0 = " AND ";
                        a2 = " AND ";
                    }
                    else if (x0 == true && x2 == true && x3 == true)
                    {
                        a1 = " AND ";
                        a2 = " AND ";
                    }
                    else if (x1 == true && x2 == true && x3 == true)
                    {
                        a1 = " AND ";
                        a2 = " AND ";
                    }
                }

                if (count == 4)
                {
                    a0 = " AND ";
                    a1 = " AND ";
                    a2 = " AND ";
                }
            }
            string sql = "SELECT Tbl_Kitaplar.Kitapid, KitapAdi, KitapAciklama, " +
                " CAST(KitapFiyat as DECIMAL(10,2)) as KitapFiyat, KitapResim, " +
                "CAST(KitapOrtalamaPuani as DECIMAL(4,2)) as KitapOrtalamaPuani, " +
                "Tbl_Yazarlar.YazarAdiSoyadi, Tbl_Kategoriler.KategoriAdi, Tbl_Yayinevleri.YayineviAdi, " +
            "(select COUNT(*) FROM Tbl_Kitaplar) AS ToplamKitapSayisi FROM Tbl_Kitaplar " +
            "INNER JOIN Tbl_Kategoriler ON Tbl_Kitaplar.KitapKategoriid = Tbl_Kategoriler.Kategoriid " +
            "INNER JOIN Tbl_Yazarlar ON Tbl_Kitaplar.KitapYazarid = Tbl_Yazarlar.Yazarid " +
            "INNER JOIN Tbl_Yayinevleri ON Tbl_Yayinevleri.Yayineviid = Tbl_Kitaplar.KitapYayineviid " +
            where + t0 + a0 + t1 + a1 + t2 + a2 + t3 + " " +
            "AND KitapFiyat between " + fminmax +
            " ORDER BY Tbl_Kitaplar.KitapFiyat asc";
            SqlCommand command = new SqlCommand(sql, connection);
            DataSet searchResult = new DataSet();
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            connection.Close();
            connection.Open();
            adapter.Fill(searchResult);
            connection.Close();
            return searchResult;
        }

        public static int getSayiFiltre(string kitapAdi, string yazarAdi, string katAdi, string yevAdi, string fminmax)
        {
            /**
            string sg = "AND Subgroups.SGID = " + sgid + " ";
            string b = "AND Brands.BID = " + bid + " ";
            string et = "AND Enginetypes.EID = " + etid + " ";
            string s = "AND Series.SID = " + sid + " ";

            if (sgid != -1) 
            {
                sql = sql + sg; 
            }
            else if (bid != -1) 
            {
                sql = sql + b; 
            }
            else if (etid != -1)
            { 
                sql = sql + et; 
            }
            else if (sid != -1) 
            {
                sql = sql + s; 
            }**/
            string t0 = "", t1 = "", t2 = "", t3 = "", a0 = "", a1 = "", a2 = "", where = "";
            int count = 0;
            Boolean x0 = false, x1 = false, x2 = false, x3 = false;
            if (kitapAdi != "--Seç--")
            {
                t0 = " KitapAdi = '" + kitapAdi + "' ";
                count += 1;
                x0 = true;
            }
            if (yazarAdi != "--Seç--")
            {
                t1 = " YazarAdiSoyadi = '" + yazarAdi + "' ";
                count += 1;
                x1 = true;
            }
            if (katAdi != "--Seç--")
            {
                t2 = " KategoriAdi = '" + katAdi + "' ";
                count += 1;
                x2 = true;
            }
            if (yevAdi != "--Seç--")
            {
                t3 = " YayineviAdi = '" + yevAdi + "' ";
                count += 1;
                x3 = true;
            }
            if (count != 0)
            {
                where = " WHERE ";
                if (count == 2)
                {
                    if (x0 == true && x1 == true)
                        a0 = " AND ";
                    else if (x0 = true && x2 == true)
                        a1 = " AND ";
                    else if (x0 = true && x3 == true)
                        a2 = " AND ";
                    else if (x1 == true && x2 == true)
                        a1 = " AND ";
                    else if (x1 == true && x3 == true)
                        a2 = " AND ";
                    else if (x2 == true && x3 == true)
                        a2 = " AND ";
                }
                if (count == 3)
                {
                    if (x0 == true && x1 == true && x2 == true)
                    {
                        a0 = " AND ";
                        a1 = " AND ";
                    }
                    else if (x0 == true && x1 == true && x3 == true)
                    {
                        a0 = " AND ";
                        a2 = " AND ";
                    }
                    else if (x0 == true && x2 == true && x3 == true)
                    {
                        a1 = " AND ";
                        a2 = " AND ";
                    }
                    else if (x1 == true && x2 == true && x3 == true)
                    {
                        a1 = " AND ";
                        a2 = " AND ";
                    }
                }
                if (count == 4)
                {
                    a0 = " AND ";
                    a1 = " AND ";
                    a2 = " AND ";
                }
            }
            string sql = "SELECT COUNT(*) FROM Tbl_Kitaplar " +
                "INNER JOIN Tbl_Kategoriler ON Tbl_Kitaplar.KitapKategoriid = Tbl_Kategoriler.Kategoriid " +
                "INNER JOIN Tbl_Yazarlar ON Tbl_Kitaplar.KitapYazarid = Tbl_Yazarlar.Yazarid " +
                "INNER JOIN Tbl_Yayinevleri ON Tbl_Yayinevleri.Yayineviid = Tbl_Kitaplar.KitapYayineviid " +
                where + t0 + a0 + t1 + a1 + t2 + a2 + t3 + " " +
                " AND KitapFiyat between " + fminmax + " ";
            SqlCommand command = new SqlCommand(sql, connection);
            connection.Close();
            connection.Open();
            int toplam = 0;
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                toplam = reader.GetInt32(0);
            }
            reader.Close();
            connection.Close();
            return toplam;
        }

        public static DataSet getFirstLast5Books(string orderby, string sira)
        {
            string sql = "SELECT TOP(5) Tbl_Kitaplar.Kitapid, KitapAdi, KitapAciklama, " +
                " CAST(KitapFiyat as DECIMAL(10,2)) as KitapFiyat, KitapResim, " +
                "CAST(KitapOrtalamaPuani as DECIMAL(4,2)) as KitapOrtalamaPuani, KitapYorumSayisi, " +
                "Tbl_Yazarlar.YazarAdiSoyadi, Tbl_Kategoriler.KategoriAdi, " +
                "Tbl_Yayinevleri.YayineviAdi FROM Tbl_Kitaplar " +
                "INNER JOIN Tbl_Kategoriler ON Tbl_Kitaplar.KitapKategoriid = Tbl_Kategoriler.Kategoriid " +
                "INNER JOIN Tbl_Yazarlar ON Tbl_Kitaplar.KitapYazarid = Tbl_Yazarlar.Yazarid " +
                "INNER JOIN Tbl_Yayinevleri ON Tbl_Yayinevleri.Yayineviid = Tbl_Kitaplar.KitapYayineviid " +
                "ORDER BY " + orderby + " " + sira + " ";

            SqlCommand command = new SqlCommand(sql, connection);
            DataSet result = new DataSet();
            SqlDataAdapter adaptor = new SqlDataAdapter(command);
            connection.Close();
            connection.Open();
            adaptor.Fill(result);
            connection.Close();
            return result;
        }
        public static DataSet getYorumlar(string kitapid)
        {
            string sql = "SELECT Tbl_Yorumlar.Yorumid, Yorumicerik, YorumKitapid, " +
                "YorumKullaniciid, YorumTarihi, " +
                "(Tbl_Kullanicilar.KullaniciAdi + ' ' + Tbl_Kullanicilar.KullaniciSoyadi) AS adsoyad, " +
                "Tbl_Kitaplar.KitapAdi FROM Tbl_Yorumlar " +
                "INNER JOIN Tbl_Kitaplar ON " +
                "Tbl_Yorumlar.YorumKitapid = Tbl_Kitaplar.Kitapid " +
                "INNER JOIN Tbl_Kullanicilar ON " +
                "Tbl_Yorumlar.YorumKullaniciid = Tbl_Kullanicilar.Kullaniciid " +
                "WHERE Tbl_Kitaplar.Kitapid =" + kitapid;
            SqlCommand command = new SqlCommand(sql, connection);
            DataSet result = new DataSet();
            SqlDataAdapter adaptor = new SqlDataAdapter(command);
            connection.Close();
            connection.Open();
            adaptor.Fill(result);
            connection.Close();
            return result;
        }
        public static int getYorumSayisi(string kitapid)
        {
            string sql = "SELECT Count(Yorumid)  FROM Tbl_Yorumlar " +
                "INNER JOIN Tbl_Kitaplar ON Tbl_Yorumlar.YorumKitapid = Tbl_Kitaplar.Kitapid " +
                "INNER JOIN Tbl_Kullanicilar ON Tbl_Yorumlar.YorumKullaniciid = Tbl_Kullanicilar.Kullaniciid " +
                "WHERE Tbl_Kitaplar.Kitapid =" + kitapid;
            SqlCommand command = new SqlCommand(sql, connection);
            connection.Close();
            connection.Open();
            int id = 0;
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                id = reader.GetInt32(0);
            }
            reader.Close();
            connection.Close();
            return id;
        }
        public static DataSet KitapAraisim(string kitapadi)
        {
            string sql = "SELECT Tbl_Kitaplar.Kitapid, KitapAdi, KitapAciklama, " +
                " CAST(KitapFiyat as DECIMAL(10,2)) as KitapFiyat, KitapResim," +
            "CAST(KitapOrtalamaPuani as DECIMAL(4,2)) as KitapOrtalamaPuani, " +
            "Tbl_Yazarlar.YazarAdiSoyadi, Tbl_Kategoriler.KategoriAdi, " +
            "Tbl_Yayinevleri.YayineviAdi, " +
            "(select COUNT(*) FROM Tbl_Kitaplar) AS ToplamKitapSayisi FROM Tbl_Kitaplar " +
            "INNER JOIN Tbl_Kategoriler ON Tbl_Kitaplar.KitapKategoriid = Tbl_Kategoriler.Kategoriid " +
            "INNER JOIN Tbl_Yazarlar ON Tbl_Kitaplar.KitapYazarid = Tbl_Yazarlar.Yazarid " +
            "INNER JOIN Tbl_Yayinevleri ON Tbl_Yayinevleri.Yayineviid = Tbl_Kitaplar.KitapYayineviid " +
            "WHERE Tbl_Kitaplar.KitapAdi LIKE '%' + '" + kitapadi + "' + '%' " +
            "ORDER BY Tbl_Kitaplar.KitapOrtalamaPuani desc ";

            SqlCommand command = new SqlCommand(sql, connection);
            DataSet bulSonuc = new DataSet();
            SqlDataAdapter adaptor = new SqlDataAdapter(command);
            connection.Close();
            connection.Open();
            adaptor.Fill(bulSonuc);
            connection.Close();
            return bulSonuc;
        }
        public static int getKitapSayisiArama(string kitapadi)
        {
            string sql = "SELECT COUNT(*)  FROM Tbl_Kitaplar " +
                "WHERE Tbl_Kitaplar.KitapAdi LIKE '%' + '" + kitapadi + "' + '%' ";
            SqlCommand command = new SqlCommand(sql, connection);
            connection.Close();
            connection.Open();
            int toplam = 0;
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                toplam = reader.GetInt32(0);
            }
            reader.Close();
            connection.Close();
            return toplam;
        }
        public static DataSet KitapAraYazar(string yazaradi)
        {
            string sql = "SELECT Tbl_Kitaplar.Kitapid, KitapAdi, KitapAciklama, " +
                " CAST(KitapFiyat as DECIMAL(10,2)) as KitapFiyat, KitapResim, " +
                "CAST(KitapOrtalamaPuani as DECIMAL(4,2)) as KitapOrtalamaPuani, " +
                "Tbl_Yazarlar.YazarAdiSoyadi, Tbl_Kategoriler.KategoriAdi, " +
                "Tbl_Yayinevleri.YayineviAdi FROM Tbl_Kitaplar " +
                "INNER JOIN Tbl_Kategoriler ON Tbl_Kitaplar.KitapKategoriid = Tbl_Kategoriler.Kategoriid " +
                "INNER JOIN Tbl_Yazarlar ON Tbl_Kitaplar.KitapYazarid = Tbl_Yazarlar.Yazarid " +
                "INNER JOIN Tbl_Yayinevleri ON Tbl_Yayinevleri.Yayineviid = Tbl_Kitaplar.KitapYayineviid " +
                "WHERE Tbl_Yazarlar.YazarAdiSoyadi LIKE '%' + '" + yazaradi + "' + '%' " +
                "ORDER BY Tbl_Kitaplar.KitapOrtalamaPuani desc ";

            SqlCommand command = new SqlCommand(sql, connection);
            DataSet bulSonuc = new DataSet();
            SqlDataAdapter adaptor = new SqlDataAdapter(command);
            connection.Close();
            connection.Open();
            adaptor.Fill(bulSonuc);
            connection.Close();
            return bulSonuc;
        }
        public static int getKitapSayisiYazarArama(string yazaradi)
        {
            string sql = "SELECT COUNT(Tbl_Yazarlar.YazarAdiSoyadi) FROM Tbl_Kitaplar " +
                "INNER JOIN Tbl_Yazarlar ON Tbl_Kitaplar.KitapYazarid = Tbl_Yazarlar.Yazarid " +
                "WHERE Tbl_Yazarlar.YazarAdiSoyadi LIKE '%' + '" + yazaradi + "' + '%' ";

            SqlCommand command = new SqlCommand(sql, connection);
            connection.Close();
            connection.Open();
            int toplam = 0;
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                toplam = reader.GetInt32(0);
            }
            reader.Close();
            connection.Close();
            return toplam;
        }
        public static string getMaxFiyat()
        {
            string sql = "SELECT MAX(KitapFiyat) FROM Tbl_Kitaplar ";
            SqlCommand command = new SqlCommand(sql, connection);
            connection.Close();
            connection.Open();
            double max = 0.0;
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                max = reader.GetDouble(0);
            }
            reader.Close();
            connection.Close();
            max += 1;
            int a = Convert.ToInt32(max);
            return a.ToString();
        }
        public static DataSet KitapAraKategori(string kategoridi)
        {
            string sql = "SELECT Tbl_Kitaplar.Kitapid, KitapAdi, KitapAciklama, " +
                " CAST(KitapFiyat as DECIMAL(10,2)) as KitapFiyat, KitapResim, " +
                "CAST(KitapOrtalamaPuani as DECIMAL(4,2)) as KitapOrtalamaPuani, " +
                "Tbl_Yazarlar.YazarAdiSoyadi, Tbl_Kategoriler.KategoriAdi, " +
                "Tbl_Yayinevleri.YayineviAdi FROM Tbl_Kitaplar " +
                "INNER JOIN Tbl_Kategoriler ON Tbl_Kitaplar.KitapKategoriid = Tbl_Kategoriler.Kategoriid " +
                "INNER JOIN Tbl_Yazarlar ON Tbl_Kitaplar.KitapYazarid = Tbl_Yazarlar.Yazarid " +
                "INNER JOIN Tbl_Yayinevleri ON Tbl_Yayinevleri.Yayineviid = Tbl_Kitaplar.KitapYayineviid " +
                "WHERE Tbl_Kategoriler.KategoriAdi LIKE '%' + '" + kategoridi + "' + '%' " +
                "ORDER BY Tbl_Kitaplar.KitapOrtalamaPuani desc ";

            SqlCommand command = new SqlCommand(sql, connection);
            DataSet bulSonuc = new DataSet();
            SqlDataAdapter adaptor = new SqlDataAdapter(command);
            connection.Close();
            connection.Open();
            adaptor.Fill(bulSonuc);
            connection.Close();
            return bulSonuc;
        }
        public static int getKitapSayisikategoriArama(string kategoridi)
        {
            string sql = "SELECT COUNT(Tbl_Kategoriler.KategoriAdi) FROM Tbl_Kitaplar " +
                "INNER JOIN Tbl_Kategoriler ON Tbl_Kitaplar.KitapKategoriid = Tbl_Kategoriler.Kategoriid " +
                "WHERE Tbl_Kategoriler.KategoriAdi LIKE '%' + '" + kategoridi + "' + '%' ";

            SqlCommand command = new SqlCommand(sql, connection);
            connection.Close();
            connection.Open();
            int toplam = 0;
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                toplam = reader.GetInt32(0);
            }
            reader.Close();
            connection.Close();
            return toplam;
        }
        public static DataSet KitapAraYayınev(string kategoridi)
        {
            string sql = "SELECT Tbl_Kitaplar.Kitapid, KitapAdi, KitapAciklama, " +
                " CAST(KitapFiyat as DECIMAL(10,2)) as KitapFiyat, KitapResim, " +
                "CAST(KitapOrtalamaPuani as DECIMAL(4,2)) as KitapOrtalamaPuani, " +
                "Tbl_Yazarlar.YazarAdiSoyadi, Tbl_Kategoriler.KategoriAdi, " +
                "Tbl_Yayinevleri.YayineviAdi FROM Tbl_Kitaplar " +
                "INNER JOIN Tbl_Kategoriler ON Tbl_Kitaplar.KitapKategoriid = Tbl_Kategoriler.Kategoriid " +
                "INNER JOIN Tbl_Yazarlar ON Tbl_Kitaplar.KitapYazarid = Tbl_Yazarlar.Yazarid " +
                "INNER JOIN Tbl_Yayinevleri ON Tbl_Yayinevleri.Yayineviid = Tbl_Kitaplar.KitapYayineviid " +
                "WHERE Tbl_Kategoriler.KategoriAdi LIKE '%' + '" + kategoridi + "' + '%' " +
                "ORDER BY Tbl_Kitaplar.KitapOrtalamaPuani desc ";

            SqlCommand command = new SqlCommand(sql, connection);
            DataSet bulSonuc = new DataSet();
            SqlDataAdapter adaptor = new SqlDataAdapter(command);
            connection.Close();
            connection.Open();
            adaptor.Fill(bulSonuc);
            connection.Close();
            return bulSonuc;
        }
        public static int getKitapSayisiYayınevArama(string kategoridi)
        {
            string sql = "SELECT COUNT(Tbl_Kategoriler.KategoriAdi) FROM Tbl_Kitaplar " +
                "INNER JOIN Tbl_Kategoriler ON Tbl_Kitaplar.KitapKategoriid = Tbl_Kategoriler.Kategoriid " +
                "WHERE Tbl_Kategoriler.KategoriAdi LIKE '%' + '" + kategoridi + "' + '%' ";

            SqlCommand command = new SqlCommand(sql, connection);
            connection.Close();
            connection.Open();
            int toplam = 0;
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                toplam = reader.GetInt32(0);
            }
            reader.Close();
            connection.Close();
            return toplam;
        }
        public static DataSet getAllKitaplar()
        {
            string sql = "SELECT DISTINCT(KitapAdi) " +
                "FROM Tbl_Kitaplar ORDER BY Tbl_Kitaplar.KitapAdi";
            SqlCommand command = new SqlCommand(sql, connection);
            DataSet result = new DataSet();
            SqlDataAdapter adaptor = new SqlDataAdapter(command);
            connection.Close();
            connection.Open();
            adaptor.Fill(result);
            connection.Close();
            return result;
        }
        public static DataSet getAllYazarlar()
        {
            string sql = "SELECT Tbl_Yazarlar.Yazarid, YazarAdiSoyadi " +
                "FROM Tbl_Yazarlar ORDER BY Tbl_Yazarlar.YazarAdiSoyadi";
            SqlCommand command = new SqlCommand(sql, connection);
            DataSet result = new DataSet();
            SqlDataAdapter adaptor = new SqlDataAdapter(command);
            connection.Close();
            connection.Open();
            adaptor.Fill(result);
            connection.Close();
            return result;
        }
        public static DataSet getAllKategori()
        {
            string sql = "SELECT Tbl_Kategoriler.Kategoriid, KategoriAdi " +
                "FROM Tbl_Kategoriler ORDER BY Tbl_Kategoriler.KategoriAdi";
            SqlCommand command = new SqlCommand(sql, connection);
            DataSet result = new DataSet();
            SqlDataAdapter adaptor = new SqlDataAdapter(command);
            connection.Close();
            connection.Open();
            adaptor.Fill(result);
            connection.Close();
            return result;
        }
        public static DataSet getAllYayinevleri()
        {
            string sql = "SELECT Tbl_Yayinevleri.Yayineviid, YayineviAdi " +
                "FROM Tbl_Yayinevleri ORDER BY Tbl_Yayinevleri.YayineviAdi";
            SqlCommand command = new SqlCommand(sql, connection);
            DataSet result = new DataSet();
            SqlDataAdapter adaptor = new SqlDataAdapter(command);
            connection.Close();
            connection.Open();
            adaptor.Fill(result);
            connection.Close();
            return result;
        }
        public static DataSet getBookYazar(string yaz)
        {
            string sql = "SELECT Tbl_Kitaplar.Kitapid, KitapAdi, KitapAciklama, " +
                " CAST(KitapFiyat as DECIMAL(10,2)) as KitapFiyat, KitapResim, " +
                "CAST(KitapOrtalamaPuani as DECIMAL(4,2)) as KitapOrtalamaPuani, " +
                "Tbl_Yazarlar.YazarAdiSoyadi, Tbl_Kategoriler.Kategoriid, " +
        "Tbl_Kategoriler.KategoriAdi, Tbl_Yayinevleri.YayineviAdi, " +
        "(select COUNT(*) FROM Tbl_Kitaplar) AS ToplamKitapSayisi FROM Tbl_Kitaplar " +
        "INNER JOIN Tbl_Kategoriler ON Tbl_Kitaplar.KitapKategoriid = Tbl_Kategoriler.Kategoriid " +
        "INNER JOIN Tbl_Yazarlar ON Tbl_Kitaplar.KitapYazarid = Tbl_Yazarlar.Yazarid " +
        "INNER JOIN Tbl_Yayinevleri ON Tbl_Yayinevleri.Yayineviid = Tbl_Kitaplar.KitapYayineviid " +
        "WHERE Tbl_Yazarlar.Yazarid =" + yaz + " " +
        "ORDER BY Tbl_Kitaplar.KitapOrtalamaPuani desc ";

            SqlCommand command = new SqlCommand(sql, connection);
            DataSet bulSonuc = new DataSet();
            SqlDataAdapter adaptor = new SqlDataAdapter(command);
            connection.Close();
            connection.Open();
            adaptor.Fill(bulSonuc);
            connection.Close();
            return bulSonuc;
        }
        public static DataSet getBookKategori(string kat)
        {
            string sql = "SELECT Tbl_Kitaplar.Kitapid, KitapAdi, KitapAciklama, " +
                " CAST(KitapFiyat as DECIMAL(10,2)) as KitapFiyat, KitapResim, " +
                "CAST(KitapOrtalamaPuani as DECIMAL(4,2)) as KitapOrtalamaPuani, " +
                "Tbl_Yazarlar.YazarAdiSoyadi, Tbl_Kategoriler.Kategoriid, " +
        "Tbl_Kategoriler.KategoriAdi, Tbl_Yayinevleri.YayineviAdi, " +
        "(select COUNT(*) FROM Tbl_Kitaplar) AS ToplamKitapSayisi FROM Tbl_Kitaplar " +
        "INNER JOIN Tbl_Kategoriler ON Tbl_Kitaplar.KitapKategoriid = Tbl_Kategoriler.Kategoriid " +
        "INNER JOIN Tbl_Yazarlar ON Tbl_Kitaplar.KitapYazarid = Tbl_Yazarlar.Yazarid " +
        "INNER JOIN Tbl_Yayinevleri ON Tbl_Yayinevleri.Yayineviid = Tbl_Kitaplar.KitapYayineviid " +
        "WHERE Tbl_Kategoriler.Kategoriid =" + kat + " " +
        "ORDER BY Tbl_Kitaplar.KitapOrtalamaPuani desc ";

            SqlCommand command = new SqlCommand(sql, connection);
            DataSet bulSonuc = new DataSet();
            SqlDataAdapter adaptor = new SqlDataAdapter(command);
            connection.Close();
            connection.Open();
            adaptor.Fill(bulSonuc);
            connection.Close();
            return bulSonuc;
        }
        public static DataSet getBookYayinevi(string yev)
        {
            string sql = "SELECT Tbl_Kitaplar.Kitapid, KitapAdi, KitapAciklama, " +
                " CAST(KitapFiyat as DECIMAL(10,2)) as KitapFiyat, KitapResim, " +
                "CAST(KitapOrtalamaPuani as DECIMAL(4,2)) as KitapOrtalamaPuani, " +
                "Tbl_Yazarlar.YazarAdiSoyadi, Tbl_Kategoriler.KategoriAdi, " +
                "Tbl_Yayinevleri.Yayineviid, Tbl_Yayinevleri.YayineviAdi, " +
        "(select COUNT(*) FROM Tbl_Kitaplar) AS ToplamKitapSayisi FROM Tbl_Kitaplar " +
        "INNER JOIN Tbl_Kategoriler ON Tbl_Kitaplar.KitapKategoriid = Tbl_Kategoriler.Kategoriid " +
        "INNER JOIN Tbl_Yazarlar ON Tbl_Kitaplar.KitapYazarid = Tbl_Yazarlar.Yazarid " +
        "INNER JOIN Tbl_Yayinevleri ON Tbl_Yayinevleri.Yayineviid = Tbl_Kitaplar.KitapYayineviid " +
        "WHERE Tbl_Yayinevleri.Yayineviid =" + yev + " " +
        "ORDER BY Tbl_Kitaplar.KitapOrtalamaPuani desc ";

            SqlCommand command = new SqlCommand(sql, connection);
            DataSet bulSonuc = new DataSet();
            SqlDataAdapter adaptor = new SqlDataAdapter(command);
            connection.Close();
            connection.Open();
            adaptor.Fill(bulSonuc);
            connection.Close();
            return bulSonuc;
        }
        public static int getKitapSayisiYazar(string yazid)
        {
            string sql = "SELECT COUNT(*) FROM Tbl_Kitaplar INNER JOIN Tbl_Yazarlar ON Tbl_Yazarlar.Yazarid " +
                      "= Tbl_Kitaplar.KitapYazarid WHERE Tbl_Kitaplar.KitapYazarid = '" + yazid + "'";
            SqlCommand command = new SqlCommand(sql, connection);
            connection.Close();
            connection.Open();
            int toplam = 0;
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                toplam = reader.GetInt32(0);
            }
            reader.Close();
            connection.Close();
            return toplam;
        }
        public static int getKitapSayisiKategori(string yazid)
        {
            string sql = "SELECT COUNT(*) FROM Tbl_Kitaplar INNER JOIN Tbl_Kategoriler ON Tbl_Kategoriler." +
             "Kategoriid = Tbl_Kitaplar.KitapKategoriid WHERE Tbl_Kitaplar.KitapKategoriid = '" + yazid + "'";
            SqlCommand command = new SqlCommand(sql, connection);
            connection.Close();
            connection.Open();
            int toplam = 0;
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                toplam = reader.GetInt32(0);
            }
            reader.Close();
            connection.Close();
            return toplam;
        }
        public static int getKitapSayisiYayinevi(string yevid)
        {
            string sql = "SELECT COUNT(*) FROM Tbl_Kitaplar INNER JOIN Tbl_Yayinevleri ON Tbl_Yayinevleri." +
            "Yayineviid = Tbl_Kitaplar.KitapYayineviid WHERE Tbl_Kitaplar.KitapYayineviid = '" + yevid + "'";
            SqlCommand command = new SqlCommand(sql, connection);
            connection.Close();
            connection.Open();
            int toplam = 0;
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                toplam = reader.GetInt32(0);
            }
            reader.Close();
            connection.Close();
            return toplam;
        }
        public static string getYazarAdi(string yazid)
        {
            string sql = "SELECT Tbl_Yazarlar.YazarAdiSoyadi FROM Tbl_Yazarlar " +
                "WHERE Tbl_Yazarlar.Yazarid = @yazid ";
            SqlCommand command = new SqlCommand(sql, connection);
            command.Parameters.AddWithValue("@yazid", yazid);
            connection.Close();
            connection.Open();
            string yazaradi = "";
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                yazaradi = reader.GetString(0);
            }
            reader.Close();
            connection.Close();
            return yazaradi;
        }
        public static string getKategoriAdi(string katid)
        {
            string sql = "SELECT Tbl_Kategoriler.KategoriAdi FROM Tbl_Kategoriler " +
                "WHERE Tbl_Kategoriler.Kategoriid = @katid ";
            SqlCommand command = new SqlCommand(sql, connection);
            command.Parameters.AddWithValue("@katid", katid);
            connection.Close();
            connection.Open();
            string kategoriadi = "";
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                kategoriadi = reader.GetString(0);
            }
            reader.Close();
            connection.Close();
            return kategoriadi;
        }
        public static string getYayineviAdi(string yevid)
        {
            string sql = "SELECT Tbl_Yayinevleri.YayineviAdi FROM Tbl_Yayinevleri " +
                "WHERE Tbl_Yayinevleri.Yayineviid = @yevid ";
            SqlCommand command = new SqlCommand(sql, connection);
            command.Parameters.AddWithValue("@yevid", yevid);
            connection.Close();
            connection.Open();
            string yayineviadi = "";
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                yayineviadi = reader.GetString(0);
            }
            reader.Close();
            connection.Close();
            return yayineviadi;
        }
        public static void UyeOlKullanici(string kullaniciad, string kullanicisoyad, string kullaniciposta, string kulanicisifre)
        {
            string sql = "insert into Tbl_Kullanicilar (KullaniciAdi, KullaniciSoyadi, " +
                "KullaniciMail, KullaniciSifre) values (@kAdi, @kSoyadi, @kEposta, @kSifre)";
            SqlCommand command = new SqlCommand(sql, connection);
            command.Parameters.AddWithValue("@kAdi", kullaniciad);
            command.Parameters.AddWithValue("@kSoyadi", kullanicisoyad);
            command.Parameters.AddWithValue("@kEposta", kullaniciposta);
            command.Parameters.AddWithValue("@kSifre", kulanicisifre);
            connection.Close();
            connection.Open();
            command.ExecuteNonQuery();
            connection.Close();
        }
        public static bool KullaniciGirisKontrol(string kullaniciposta, string kulanicisifre)
        {
            string sql = "SELECT * FROM Tbl_Kullanicilar " +
                "WHERE KullaniciMail = @kEposta AND KullaniciSifre = @kSifre";
            SqlCommand command = new SqlCommand(sql, connection);
            command.Parameters.AddWithValue("@kEposta", kullaniciposta);
            command.Parameters.AddWithValue("@kSifre", kulanicisifre);
            DataSet control = new DataSet();
            bool result = false;
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            connection.Close();
            connection.Open();
            adapter.Fill(control);
            connection.Close();
            if (control.Tables[0].Rows.Count > 0)
                result = true;
            return result;
        }
        public static bool kontrolKullaniciMail(string kullaniciposta)
        {
            string sql = "SELECT * FROM Tbl_Kullanicilar WHERE KullaniciMail=@kEposta";
            SqlCommand command = new SqlCommand(sql, connection);
            command.Parameters.AddWithValue("@kEposta", kullaniciposta);
            DataSet resultControl = new DataSet();
            bool result = false;
            SqlDataAdapter adaptor = new SqlDataAdapter(command);
            connection.Close();
            connection.Open();
            adaptor.Fill(resultControl);
            connection.Close();
            if (resultControl.Tables[0].Rows.Count > 0)
                result = true;
            return result;
        }
        public static void KitapPuaniEkle(int kitapid, string kullaniciid, float KitapPuani)
        {
            string sql;
            if (kullaniciKitapPuaniKontrol(kitapid, kullaniciid) == false)
            {
                sql = "insert into Tbl_KitapPuanlari (PuanKitapid, PuanKullaniciid, " +
                    "PuanKitapPuani) values (@kitid, @kulid, @KitPuan)";
            }
            else
            {
                sql = "update Tbl_KitapPuanlari set PuanKitapPuani = @KitPuan " +
                    "WHERE PuanKitapid = @kitid AND PuanKullaniciid = @kulid ";
            }
            SqlCommand command = new SqlCommand(sql, connection);
            command.Parameters.AddWithValue("@kitid", kitapid);
            command.Parameters.AddWithValue("@kulid", kullaniciid);
            command.Parameters.AddWithValue("@KitPuan", KitapPuani);
            connection.Close();
            connection.Open();
            command.ExecuteNonQuery();
            connection.Close();
            KitapOrtPuanGuncelle(kitapid);
        }
        public static void KullaniciSiparisEkle(string kitapid, string kullaniciid, string sipariscode, int adet)
        {
            string durum = "Beklemede";
            string sql = "insert into Tbl_Siparisler (SiparisCode, SiparisKitapid, " +
                   "SiparisKullaniciid, SiparisAdet, SiparisDurum) " +
                   "values (@sipcode, @skitid, @skulid, @sAdet, @sDurum)";
            SqlCommand command = new SqlCommand(sql, connection);
            command.Parameters.AddWithValue("@sipcode", sipariscode);
            command.Parameters.AddWithValue("@skitid", kitapid);
            command.Parameters.AddWithValue("@skulid", kullaniciid);
            command.Parameters.AddWithValue("@sAdet", adet);
            command.Parameters.AddWithValue("@sDurum", durum);
            connection.Close();
            connection.Open();
            command.ExecuteNonQuery();
            connection.Close();
        }
        public static bool CodeControl(string code)
        {
            string sql = "SELECT * FROM Tbl_Siparisler WHERE SiparisCode=@sCode";
            SqlCommand command = new SqlCommand(sql, connection);
            command.Parameters.AddWithValue("@sCode", code);
            DataSet resultControl = new DataSet();
            bool result = false;
            SqlDataAdapter adaptor = new SqlDataAdapter(command);
            connection.Close();
            connection.Open();
            adaptor.Fill(resultControl);
            connection.Close();
            if (resultControl.Tables[0].Rows.Count > 0)
                result = true;
            return result;
        }
        public static string RandomCode()
        {
            Random rndm = new Random();
            string code;
            string letters = "ABCDE0FGHIJ1KLMNO2PQRST3UXWVY4Zabcd5efghi6jklmn7opqrs8txwuv9yz";
            do
            {
                code = "";
                for (int i = 0; i < 8; i++)
                {
                    code += letters[rndm.Next(letters.Length)];
                }
            } while (CodeControl(code) == true);
            return code;
        }
        public static int getTumKitapSayisi()
        {
            string sql = "SELECT COUNT(*) AS sayi FROM Tbl_Kitaplar";
            SqlCommand command = new SqlCommand(sql, connection);
            connection.Close();
            connection.Open();
            int toplam = 0;
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                toplam = reader.GetInt32(0);
            }
            reader.Close();
            connection.Close();
            return toplam;
        }
        public static void yorumEkle(string icerik, string kulid, int kitapid)
        {
            string sql = "insert into Tbl_Yorumlar (Yorumicerik, YorumKullaniciid, " +
                "YorumKitapid) values (@icerik, @kulid, @kitid)";
            SqlCommand command = new SqlCommand(sql, connection);
            command.Parameters.AddWithValue("@icerik", icerik);
            command.Parameters.AddWithValue("@kulid", kulid);
            command.Parameters.AddWithValue("@kitid", kitapid);
            connection.Close();
            connection.Open();
            command.ExecuteNonQuery();
            connection.Close();
            YorumSayisiGuncelle(kitapid);
        }
        public static void YorumSayisiGuncelle(int kitapiid)
        {
            string sql = "update Tbl_Kitaplar set KitapYorumSayisi = KitapYorumSayisi +1 " +
                "WHERE Kitapid = " + kitapiid + " ";
            SqlCommand command = new SqlCommand(sql, connection);
            connection.Close();
            connection.Open();
            command.ExecuteNonQuery();
            connection.Close();
        }
        public static bool kullaniciKitapPuaniKontrol(int kitapid, string kullaniciid)
        {
            string sql = "SELECT * FROM Tbl_KitapPuanlari WHERE PuanKitapid=@kitid AND " +
                "PuanKullaniciid = @kulid";
            SqlCommand komut = new SqlCommand(sql, connection);
            komut.Parameters.AddWithValue("@kitid", kitapid);
            komut.Parameters.AddWithValue("@kulid", kullaniciid);
            DataSet sonucKontrol = new DataSet();
            bool sonuc = false;
            SqlDataAdapter adaptor = new SqlDataAdapter(komut);
            connection.Close();
            connection.Open();
            adaptor.Fill(sonucKontrol);
            connection.Close();
            if (sonucKontrol.Tables[0].Rows.Count > 0)
                sonuc = true;
            return sonuc;
        }
        public static void KitapOrtPuanGuncelle(int kitapiid)
        {
            string sql = "update Tbl_Kitaplar set KitapOrtalamaPuani = " +
                "(select ((SUM (PuanKitapPuani))/ COUNT(*)) AS ort " +
                "FROM Tbl_KitapPuanlari WHERE PuanKitapid = " + kitapiid +
                " Group by PuanKitapid ) WHERE Kitapid = " + kitapiid + " ";

            SqlCommand command = new SqlCommand(sql, connection);
            connection.Close();
            connection.Open();
            command.ExecuteNonQuery();
            connection.Close();
        }
        public static DataSet getAllOnerilen()
        {
            string sql = "SELECT Tbl_KitapOner.OKitapid, OKitapAdi, OKitapAciklama, OKitapFiyat, " +
                "OKitapResim, OKitapKategoriAdi, OKitapYazarAdi, OKitapYayineviAdi " +
                "FROM Tbl_KitapOner order by OKitapid";

            SqlCommand command = new SqlCommand(sql, connection);
            DataSet result = new DataSet();
            SqlDataAdapter adaptor = new SqlDataAdapter(command);
            connection.Close();
            connection.Open();
            adaptor.Fill(result);
            connection.Close();
            return result;
        }
        public static string[] KullaniciBilgileri(string id)
        {
            string[] kullanici = { "", "", "", "", "" };
            string sql = "SELECT Tbl_Kullanicilar.KullaniciAdi, KullaniciSoyadi, KullaniciMail, " +
                "KullaniciTel, KullaniciAdres " +
                "FROM Tbl_Kullanicilar WHERE Kullaniciid = " + id + " order by Kullaniciid";
            SqlCommand komut = new SqlCommand(sql, connection);
            connection.Close();
            connection.Open();
            SqlDataReader okuyucu = komut.ExecuteReader(CommandBehavior.CloseConnection);
            if (okuyucu.Read())
            {
                kullanici[0] = okuyucu["KullaniciAdi"].ToString();
                kullanici[1] = okuyucu["KullaniciSoyadi"].ToString();
                kullanici[2] = okuyucu["KullaniciMail"].ToString();
                kullanici[3] = okuyucu["KullaniciTel"].ToString();
                kullanici[4] = okuyucu["KullaniciAdres"].ToString();
            }
            connection.Close();
            return kullanici;
        }
        public static string[] AdminBilgileri(string id)
        {
            string[] admin = { "", "", "", "" };
            string sql = "SELECT Tbl_Admin.Adminid, AdminAdSoyad, AdminMail, " +
                "AdminTel FROM Tbl_Admin WHERE Adminid = " + id + " order by AdminAdSoyad";
            SqlCommand komut = new SqlCommand(sql, connection);
            connection.Close();
            connection.Open();
            SqlDataReader okuyucu = komut.ExecuteReader(CommandBehavior.CloseConnection);
            if (okuyucu.Read())
            {
                admin[0] = okuyucu["Adminid"].ToString();
                admin[1] = okuyucu["AdminAdSoyad"].ToString();
                admin[2] = okuyucu["AdminMail"].ToString();
                admin[3] = okuyucu["AdminTel"].ToString();
            }
            connection.Close();
            return admin;
        }
        public static string[] OnerilenOku(string id)
        {
            string[] kitap = { "", "", "", "", "", "", "", "" };
            string sql = "SELECT Tbl_KitapOner.OKitapid, OKitapAdi, OKitapAciklama, OKitapFiyat, " +
                "OKitapResim, OKitapKategoriAdi, OKitapYazarAdi, OKitapYayineviAdi " +
                "FROM Tbl_KitapOner WHERE OKitapid = " + id + " order by OKitapid";
            SqlCommand komut = new SqlCommand(sql, connection);
            connection.Close();
            connection.Open();
            SqlDataReader okuyucu = komut.ExecuteReader(CommandBehavior.CloseConnection);
            if (okuyucu.Read())
            {
                kitap[0] = okuyucu["OKitapid"].ToString();
                kitap[1] = okuyucu["OKitapAdi"].ToString();
                kitap[2] = okuyucu["OKitapAciklama"].ToString();
                kitap[3] = okuyucu["OKitapFiyat"].ToString();
                kitap[4] = okuyucu["OKitapResim"].ToString();
                kitap[5] = okuyucu["OKitapKategoriAdi"].ToString();
                kitap[6] = okuyucu["OKitapYazarAdi"].ToString();
                kitap[7] = okuyucu["OKitapYayineviAdi"].ToString();
            }
            connection.Close();
            return kitap;
        }
        public static void onerilenSİl(int kitapid)
        {
            string sql = "delete FROM tbl_KitapOner WHERE OKitapid = " + kitapid;
            SqlCommand komut = new SqlCommand(sql, connection);
            connection.Close();
            connection.Open();
            komut.ExecuteNonQuery();
            connection.Close();
        }
        public static void yeniKitapekle(string kad, string kac, float kft, string kres, string kkat, string kyaz, string kyev)
        {
            string sql = "insert into Tbl_Kitaplar (KitapAdi, KitapAciklama, KitapFiyat, " +
                "KitapResim, KitapKategoriid, KitapYazarid, KitapYayineviid, " +
                "KitapOrtalamaPuani) values (@k1, @k2, @k3, @k4, @k5, @k6, @k7, 0)";
            SqlCommand command = new SqlCommand(sql, connection);
            command.Parameters.AddWithValue("@k1", kad);
            command.Parameters.AddWithValue("@k2", kac);
            command.Parameters.AddWithValue("@k3", kft);
            command.Parameters.AddWithValue("@k4", kres);
            command.Parameters.AddWithValue("@k5", kkat);
            command.Parameters.AddWithValue("@k6", kyaz);
            command.Parameters.AddWithValue("@k7", kyev);
            connection.Close();
            connection.Open();
            command.ExecuteNonQuery();
            connection.Close();
        }
        public static void yeniKitapOner(string kad, string kac, string kft, string kres, string kkat, string kyaz, string kyev)
        {
            string sql = "insert into Tbl_KitapOner (OKitapAdi, OKitapAciklama, OKitapFiyat, " +
                "OKitapResim, OKitapKategoriAdi, OKitapYazarAdi, OKitapYayineviAdi ) " +
                "values (@k1, @k2, @k3, @k4, @k5, @k6, @k7)";
            SqlCommand command = new SqlCommand(sql, connection);
            command.Parameters.AddWithValue("@k1", kad);
            command.Parameters.AddWithValue("@k2", kac);
            command.Parameters.AddWithValue("@k3", kft);
            command.Parameters.AddWithValue("@k4", kres);
            command.Parameters.AddWithValue("@k5", kkat);
            command.Parameters.AddWithValue("@k6", kyaz);
            command.Parameters.AddWithValue("@k7", kyev);
            connection.Close();
            connection.Open();
            command.ExecuteNonQuery();
            connection.Close();
        }
        public static int getkid(string kullaniciposta, string kulanicisifre)
        {
            string sql = "SELECT Kullaniciid FROM Tbl_Kullanicilar WHERE KullaniciMail=@kEposta AND KullaniciSifre=@kSifre";
            SqlCommand command = new SqlCommand(sql, connection);
            command.Parameters.AddWithValue("@kEposta", kullaniciposta);
            command.Parameters.AddWithValue("@kSifre", kulanicisifre);
            connection.Close();
            connection.Open();
            int id = 0;
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                id = reader.GetInt32(0);
            }
            reader.Close();
            connection.Close();
            return id;
        }
        public static string getKitapAd(string kitapid)
        {
            string sql = "SELECT Tbl_Kitaplar.KitapAdi FROM Tbl_Kitaplar WHERE Kitapid =@kitapid";
            SqlCommand command = new SqlCommand(sql, connection);
            command.Parameters.AddWithValue("@kitapid", kitapid);
            connection.Close();
            connection.Open();
            string kad = "";
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                kad = reader.GetString(0);
            }
            reader.Close();
            connection.Close();
            return kad;
        }
        public static bool AdminGirisKontrol(string Adminposta, string Adminsifre)
        {
            string sql = "SELECT * FROM Tbl_Admin WHERE AdminMail = @aEposta AND AdminSifre = @aSifre";
            SqlCommand command = new SqlCommand(sql, connection);
            command.Parameters.AddWithValue("@aEposta", Adminposta);
            command.Parameters.AddWithValue("@aSifre", Adminsifre);
            DataSet control = new DataSet();
            bool result = false;
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            connection.Close();
            connection.Open();
            adapter.Fill(control);
            connection.Close();
            if (control.Tables[0].Rows.Count > 0)
                result = true;
            return result;
        }
        public static int getAdminid(string adminposta, string adminsifre)
        {
            string sql = "SELECT Adminid FROM Tbl_Admin WHERE AdminMail=@aEposta AND AdminSifre=@aSifre";
            SqlCommand command = new SqlCommand(sql, connection);
            command.Parameters.AddWithValue("@aEposta", adminposta);
            command.Parameters.AddWithValue("@aSifre", adminsifre);
            connection.Close();
            connection.Open();
            int id = 0;
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                id = reader.GetInt32(0);
            }
            reader.Close();
            connection.Close();
            return id;
        }
        public static void yazarekle(string adisoyadi)
        {
            string sql = "insert into Tbl_Yazarlar (YazarAdiSoyadi ) " +
                "values (@yad)";

            SqlCommand command = new SqlCommand(sql, connection);
            command.Parameters.AddWithValue("@yad", adisoyadi);
            connection.Close();
            connection.Open();
            command.ExecuteNonQuery();
            connection.Close();
        }
        public static void kategoriekle(string adi)
        {
            string sql = "insert into Tbl_Kategoriler (KategoriAdi ) " +
                "values (@kad)";

            SqlCommand command = new SqlCommand(sql, connection);
            command.Parameters.AddWithValue("@kad", adi);
            connection.Close();
            connection.Open();
            command.ExecuteNonQuery();
            connection.Close();
        }
        public static void yayineviekle(string adi)
        {
            string sql = "insert into Tbl_Yayinevleri (YayineviAdi ) " +
                "values (@kad)";

            SqlCommand command = new SqlCommand(sql, connection);
            command.Parameters.AddWithValue("@kad", adi);
            connection.Close();
            connection.Open();
            command.ExecuteNonQuery();
            connection.Close();
        }
        public static int getyazarid(string adi)
        {
            string sql = "SELECT Yazarid FROM Tbl_Yazarlar " +
                "WHERE YazarAdiSoyadi =@adi ";
            SqlCommand command = new SqlCommand(sql, connection);
            command.Parameters.AddWithValue("@adi", adi);
            connection.Close();
            connection.Open();
            int id = 0;
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                id = reader.GetInt32(0);
            }
            reader.Close();
            connection.Close();
            return id;
        }
        public static int getkategoriid(string adi)
        {
            string sql = "SELECT Kategoriid FROM Tbl_Kategoriler " +
                "WHERE KategoriAdi =@adi ";
            SqlCommand command = new SqlCommand(sql, connection);
            command.Parameters.AddWithValue("@adi", adi);
            connection.Close();
            connection.Open();
            int id = 0;
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                id = reader.GetInt32(0);
            }
            reader.Close();
            connection.Close();
            return id;
        }
        public static int getyayineviid(string adi)
        {
            string sql = "SELECT Yayineviid FROM Tbl_Yayinevleri " +
                "WHERE YayineviAdi =@adi ";
            SqlCommand command = new SqlCommand(sql, connection);
            command.Parameters.AddWithValue("@adi", adi);
            connection.Close();
            connection.Open();
            int id = 0;
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                id = reader.GetInt32(0);
            }
            reader.Close();
            connection.Close();
            return id;
        }
        public static string[] KitapBilgileriOku(string id)
        {
            string[] kitap = { "", "", "", "" };
            string sql = "SELECT Tbl_Kitaplar.KitapAdi, KitapFiyat, KitapOrtalamaPuani, KitapYorumSayisi " +
                "FROM Tbl_Kitaplar WHERE Kitapid = " + id + " order by Kitapid";
            SqlCommand komut = new SqlCommand(sql, connection);
            connection.Close();
            connection.Open();
            SqlDataReader okuyucu = komut.ExecuteReader(CommandBehavior.CloseConnection);
            if (okuyucu.Read())
            {
                kitap[0] = okuyucu["KitapAdi"].ToString();
                kitap[1] = okuyucu["KitapFiyat"].ToString();
                kitap[2] = okuyucu["KitapOrtalamaPuani"].ToString();
                kitap[3] = okuyucu["KitapYorumSayisi"].ToString();
            }
            connection.Close();
            return kitap;
        }

        public static DataSet getKullaniciSiparis(string kulid)
        {
            string sql = "SELECT SiparisCode, CONVERT(varchar, SiparisTarih, 23) as Tarih, " +
                "SiparisKitapid, SiparisKullaniciid, SiparisAdet, SiparisDurum, KitapFiyat " +
                "FROM Tbl_Siparisler " +
                "INNER JOIN Tbl_Kitaplar ON Tbl_Siparisler.SiparisKitapid = Tbl_Kitaplar.Kitapid " +
                "WHERE SiparisKullaniciid = @skulid";
            SqlCommand command = new SqlCommand(sql, connection);
            command.Parameters.AddWithValue("@skulid", kulid);
            DataSet result = new DataSet();
            SqlDataAdapter adaptor = new SqlDataAdapter(command);
            connection.Close();
            connection.Open();
            adaptor.Fill(result);
            connection.Close();
            return result;
        }
        public static int getKulSiparisSayisi(string kulid)
        {
            string sql = "SELECT COUNT(Siparisid) FROM Tbl_Siparisler " +
                "WHERE SiparisKullaniciid = " + kulid;
            SqlCommand command = new SqlCommand(sql, connection);
            connection.Close();
            connection.Open();
            int id = 0;
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                id = reader.GetInt32(0);
            }
            reader.Close();
            connection.Close();
            return id;
        }

        public static void SepeteEkle(string kulid, string kitapid, int adet, float fiyat)
        {
            string sql = "insert into Tbl_Sepet (SepetKulid, SepetKitapid, SepetAdet, SepetFiyat) " +
                "values(@k1, @k2, @k3, @k4)";
            SqlCommand command = new SqlCommand(sql, connection);
            command.Parameters.AddWithValue("@k1", kulid);
            command.Parameters.AddWithValue("@k2", kitapid);
            command.Parameters.AddWithValue("@k3", adet);
            command.Parameters.AddWithValue("@k4", fiyat);
            connection.Close();
            connection.Open();
            command.ExecuteNonQuery();
            connection.Close();

        }

        public static DataSet getKullaniciSepet(string kulid)
        {
            string sql = "SELECT SepetKulid, SepetKitapid, SepetAdet, " +
                "CAST(SepetFiyat as DECIMAL(10, 2)) as SepetFiyat, Kitapid, " +
                "KitapAdi, KitapResim, YazarAdiSoyadi FROM Tbl_Sepet " +
                "INNER JOIN Tbl_Kitaplar ON Tbl_Sepet.SepetKitapid = Tbl_Kitaplar.Kitapid " +
                "INNER JOIN Tbl_Kullanicilar ON Tbl_Sepet.SepetKulid = Tbl_Kullanicilar.Kullaniciid " +
                "INNER JOIN Tbl_Yazarlar ON Tbl_Kitaplar.KitapYazarid = Tbl_Yazarlar.Yazarid " +
                "WHERE Tbl_Sepet.SepetKulid =  @skulid";
            SqlCommand command = new SqlCommand(sql, connection);
            command.Parameters.AddWithValue("@skulid", kulid);
            DataSet result = new DataSet();
            SqlDataAdapter adaptor = new SqlDataAdapter(command);
            connection.Close();
            connection.Open();
            adaptor.Fill(result);
            connection.Close();
            return result;
        }
        public static int getKulSepetSayisi(string kulid)
        {
            string sql = "SELECT COUNT(*) FROM Tbl_Sepet " +
                "INNER JOIN Tbl_Kitaplar ON Tbl_Sepet.SepetKitapid = Tbl_Kitaplar.Kitapid " +
                "INNER JOIN Tbl_Kullanicilar ON Tbl_Sepet.SepetKulid = Tbl_Kullanicilar.Kullaniciid " +
                "INNER JOIN Tbl_Yazarlar ON Tbl_Kitaplar.KitapYazarid = Tbl_Yazarlar.Yazarid " +
                "WHERE Tbl_Sepet.SepetKulid =" + kulid;
            SqlCommand command = new SqlCommand(sql, connection);
            connection.Close();
            connection.Open();
            int id = 0;
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                id = reader.GetInt32(0);
            }
            reader.Close();
            connection.Close();
            return id;
        }
        public static double getKulSepetToplamF(string kulid)
        {
            string sql = "SELECT SUM( SepetFiyat) FROM Tbl_Sepet " +
                "INNER JOIN Tbl_Kitaplar ON Tbl_Sepet.SepetKitapid = Tbl_Kitaplar.Kitapid " +
                "INNER JOIN Tbl_Kullanicilar ON Tbl_Sepet.SepetKulid = Tbl_Kullanicilar.Kullaniciid " +
                "INNER JOIN Tbl_Yazarlar ON Tbl_Kitaplar.KitapYazarid = Tbl_Yazarlar.Yazarid " +
                "WHERE Tbl_Sepet.SepetKulid =" + kulid;
            SqlCommand command = new SqlCommand(sql, connection);
            connection.Close();
            connection.Open();
            double toplam = 0.0;
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                toplam = reader.GetDouble(0);
            }
            reader.Close();
            connection.Close();
            return toplam;
        }

        public static DataSet getFavoriler(string kulid)
        {
            string sql = "SELECT Tbl_Favoriler.FavKitapid, Tbl_Favoriler.FavKulid, " +
                "Tbl_Favoriler.FavEklenmeTarihi, Tbl_Kitaplar.Kitapid, KitapAdi, KitapAciklama, " +
                "CAST(KitapFiyat as DECIMAL(10, 2)) as KitapFiyat, KitapResim, " +
                "CAST(KitapOrtalamaPuani as DECIMAL(4, 2)) as KitapOrtalamaPuani, " +
                "Tbl_Yazarlar.YazarAdiSoyadi, Tbl_Kategoriler.KategoriAdi, Tbl_Yayinevleri.YayineviAdi, " +
                "(select COUNT(*) FROM Tbl_Kitaplar) AS ToplamKitapSayisi FROM Tbl_Favoriler " +
                "INNER JOIN Tbl_Kitaplar ON Tbl_Favoriler.FavKitapid = Tbl_Kitaplar.Kitapid " +
                "INNER JOIN Tbl_Kullanicilar ON Tbl_Favoriler.FavKulid = Tbl_Kullanicilar.Kullaniciid " +
                "INNER JOIN Tbl_Kategoriler ON " +
                "Tbl_Kitaplar.KitapKategoriid = Tbl_Kategoriler.Kategoriid " +
                "INNER JOIN Tbl_Yazarlar ON " +
                "Tbl_Kitaplar.KitapYazarid = Tbl_Yazarlar.Yazarid " +
                "INNER JOIN Tbl_Yayinevleri ON " +
                "Tbl_Yayinevleri.Yayineviid = Tbl_Kitaplar.KitapYayineviid " +
                "where FavKulid = " + kulid + " ORDER BY Tbl_Favoriler.FavEklenmeTarihi desc";
            SqlCommand command = new SqlCommand(sql, connection);
            DataSet result = new DataSet();
            SqlDataAdapter adaptor = new SqlDataAdapter(command);
            connection.Close();
            connection.Open();
            adaptor.Fill(result);
            connection.Close();
            return result;
        }
        public static int getFavorilerSayisi(string kulid)
        {
            string sql = "SELECT count(FavKitapid)  FROM Tbl_Favoriler " +
                "INNER JOIN Tbl_Kitaplar ON Tbl_Favoriler.FavKitapid = Tbl_Kitaplar.Kitapid " +
                "INNER JOIN Tbl_Kullanicilar ON Tbl_Favoriler.FavKulid = Tbl_Kullanicilar.Kullaniciid " +
                "INNER JOIN Tbl_Kategoriler ON Tbl_Kitaplar.KitapKategoriid = Tbl_Kategoriler.Kategoriid " +
                "INNER JOIN Tbl_Yazarlar ON Tbl_Kitaplar.KitapYazarid = Tbl_Yazarlar.Yazarid " +
                "INNER JOIN Tbl_Yayinevleri ON Tbl_Yayinevleri.Yayineviid = Tbl_Kitaplar.KitapYayineviid " +
                "where FavKulid = " + kulid;
            SqlCommand command = new SqlCommand(sql, connection);
            connection.Close();
            connection.Open();
            int id = 0;
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                id = reader.GetInt32(0);
            }
            reader.Close();
            connection.Close();
            return id;
        }
        public static DataSet getBooks3()
        {
            string sql = "SELECT TOP(4) KitapAdi, KitapResim FROM Tbl_Kitaplar";
            SqlCommand command = new SqlCommand(sql, connection);
            DataSet result = new DataSet();
            SqlDataAdapter adaptor = new SqlDataAdapter(command);
            connection.Close();
            connection.Open();
            adaptor.Fill(result);
            connection.Close();
            return result;
        }
        public static DataSet get5Books()
        {
            string sql = "SELECT TOP(5) Tbl_Kitaplar.Kitapid, KitapAdi, KitapAciklama, " +
                " KitapFiyat, KitapResim," +
                "Tbl_Yazarlar.YazarAdiSoyadi, Tbl_Kategoriler.KategoriAdi, Tbl_Yayinevleri.YayineviAdi " +
                "FROM Tbl_Kitaplar " +
                "INNER JOIN Tbl_Kategoriler ON Tbl_Kitaplar.KitapKategoriid = Tbl_Kategoriler.Kategoriid " +
                "INNER JOIN Tbl_Yazarlar ON Tbl_KitapYazar.Yazarid = Tbl_Yazarlar.Yazarid " +
                "INNER JOIN Tbl_Yayinevleri ON Tbl_Yayinevleri.Yayineviid = Tbl_Kitaplar.KitapYayineviid " +
                "ORDER BY Tbl_Kitaplar.Kitapid  ";

            SqlCommand command = new SqlCommand(sql, connection);
            DataSet result = new DataSet();
            SqlDataAdapter adaptor = new SqlDataAdapter(command);
            connection.Close();
            connection.Open();
            adaptor.Fill(result);
            connection.Close();
            return result;
        }
        public static bool AnyUpper(string str)
        {
            for (int i = 0; i < str.Length; i++)
            {
                char ch = str[i];
                if (char.IsUpper(ch))
                    return true;
            }
            return false;
        }
        public static bool AnyNumber(string str)
        {
            foreach (char chr in str)
            {
                if (Char.IsNumber(chr))
                    return true;
            }
            return false;
        }
        public static bool TextKontrolBosmu(string icerik)
        {
            bool sonuc = false;
            string kontrol = "";
            for (int i = 0; i < icerik.Length + 5; i++)
            {
                if (icerik == kontrol)
                    sonuc = true;
                kontrol = kontrol + " ";
            }
            return sonuc;
        }
    }
}