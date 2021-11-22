using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Project2
{
    public partial class SignUp : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Mpho\Downloads\324\Project2\App_Data\ClientInfo.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Calendar1.Visible = false;
            }
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            conn.Open();
            String sql = $"Insert into BookList Values('{txtName.Text}','{txtSurname.Text}','{txtEmail.Text}','{Convert.ToInt32(txtCellNo.Text)}','{txtDOB.Text}','{txtUserName}','{txtConfirm.Text}')";
            SqlCommand command = new SqlCommand(sql, conn);
            SqlDataAdapter adapter = new SqlDataAdapter();
            DataSet ds = new DataSet();

            adapter.InsertCommand = command;
            adapter.InsertCommand.ExecuteNonQuery();

            conn.Close();
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if(Calendar1.Visible)
            {
                Calendar1.Visible = false;
            }
            else
            {
                Calendar1.Visible = true;
            }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            txtDOB.Text = Calendar1.SelectedDate.ToString("dd/MM/yyyy");
        }
    }
}