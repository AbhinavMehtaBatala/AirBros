using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Web.Security;
using System.Configuration;
using System.Web.UI.WebControls;

namespace AirBros
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection conf = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {

        }
        void Authenticate()
        {
            using (conf)
            {
                // This will open the connection
                conf.Open();
                //Command for operations
                SqlCommand login_command = new SqlCommand();
                SqlDataAdapter login_data = new SqlDataAdapter();
                DataSet login_set = new DataSet();
                login_command.CommandText = "select * from User_Registration where Email ='" + Username.Text + "' and Password ='" + Password.Text + "' ";
                login_command.Connection = conf;
                login_data.SelectCommand = login_command;
                login_data.Fill(login_set, "User_Registration");
                int checker = login_set.Tables[0].Rows.Count;
                conf.Close();
                // Conditions
                // This condition will check if there is any data by counting the number of rows in the table. 
                if (checker > 0)
                {
                    Session["EMail"] = Username.Text;
                    Response.Redirect("Profile.aspx");
                }
                else
                {
                    Label2.Text = "Invalid Credentials or Not Registered !";
                    HyperLink2.Visible = true;
                }
            }
            

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Authenticate();
        }
    }
}