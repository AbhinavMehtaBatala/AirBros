using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AirBros
{
    public partial class Contact : Page
    {
        SqlConnection conection = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        
        protected void Button_Click(object sender, EventArgs e)
        {
            using (conection)
            {
                conection.Open();
                SqlCommand sqlCommand = conection.CreateCommand();
                sqlCommand.CommandType = CommandType.Text;
                sqlCommand.CommandText = "insert into Contact values('"+txtFName.Text+"','"+txtEmail.Text+"','"+txtPhone.Text+"','"+MsgTextBox.Text+"')";
                sqlCommand.ExecuteNonQuery();
                Success.Text = "Your request has been submitted successfully !";
                txtPhone.Text = "";
                txtFName.Text = "";
                txtEmail.Text = "";
                MsgTextBox.Text = "";
            }
        }
    }
}