using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;

namespace Project2
{
    public partial class MainScreen : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UploadImage();
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("MainForm.aspx");
        }
        private void UploadImage()
        {
            foreach (string strFileName in Directory.GetFiles(Server.MapPath("~/Data/")))
            {
                ImageButton imageButton = new ImageButton();
                FileInfo fileInfo = new FileInfo(strFileName);
                imageButton.ImageUrl = "~/Data/" + fileInfo.Name;
                imageButton.Width = Unit.Pixel(150);
                imageButton.Height = Unit.Pixel(150);
                imageButton.Style.Add("padding", "5px");
                imageButton.Click += new ImageClickEventHandler(ImageButton1_Click);
                Panel1.Controls.Add(imageButton);
            }
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            UploadImage();
            if (FileUpload1.HasFile)
            {
                string fileName = FileUpload1.FileName;
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Data/" + fileName));
                Response.Write("Upload Successful");

            }
            Response.Redirect("MainScreen.aspx");
            
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect( ((ImageButton)sender).ImageUrl);
        }
    }
}