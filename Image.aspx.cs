using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Threading;
using System.Drawing;
using System.Drawing.Imaging;
using System.Resources;
using System.Net;

namespace Project2
{
    public partial class Image : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Image1.ImageUrl = Request.QueryString["ImageURL"];

        }
        WebClient client;

        protected void BtnDelete_Click(object sender, EventArgs e)
        {
            var filePath = Server.MapPath("ImageURL");
            if (File.Exists(filePath))
            {
                File.Delete(filePath);
            }
            Response.Redirect("MainScreen.aspx");
        }

        protected void BtnDownload_Click(object sender, EventArgs e)
        {
            string url = "ImageURL";
            if (!string.IsNullOrEmpty(url))
            {
                Thread thread = new Thread(() =>
                {
                    Uri uri = new Uri(url);
                    string filename = System.IO.Path.GetFileName(uri.AbsolutePath);
                    client.DownloadDataAsync(uri, Server.MapPath("ImageURL") + filename);
                    Response.Write("Downloading");

                });
            }
            SaveImage("", "", ImageFormat.Jpeg);

        }
        public void SaveImage(string imageUrl, string filename, ImageFormat format)
        {
            string url = "~/ImageURL";
            WebClient client = new WebClient();
            Stream stream = client.OpenRead(imageUrl);
            Bitmap bitmap = new Bitmap(stream);

            if (bitmap != null)
            {
                bitmap.Save(filename, format);
            }
            stream.Flush();
            stream.Close();
            stream.Dispose();
        }

        protected void Gallery_Click(object sender, EventArgs e)
        {
            Response.Redirect("MainScreen.aspx");
        }
    }
}