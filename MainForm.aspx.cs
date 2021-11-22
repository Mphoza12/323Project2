using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Project2
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username, password;

            username = txtUserName.Text;
            password = txtPassWord.Text;

            try
            {
                con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Mpho\Downloads\324\Project2\App_Data\ClientInfo.mdf;Integrated Security=True");
                Response.Write("Connection Successful");
                con.Open();

                string qry = "SELECT  * FROM ClientInfo WHERE username = '" + username + "' And password = '" + password + "'";
                SqlCommand cmd = new SqlCommand(qry, con);
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);

                DataTable dt = new DataTable();
                adapter.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    Response.Redirect("MainScreen.aspx");
                }
                else
                {
                    Response.Write("Invalid Username or Password");
                }
                con.Close();

            }
            catch (Exception ex)
            {
                Response.Write("Error" + ex.ToString());

            }
        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUpForm.aspx");
        }
    }
}