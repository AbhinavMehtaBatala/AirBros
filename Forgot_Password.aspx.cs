using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace AirBros
{
    public partial class Forgot_Password : System.Web.UI.Page
    {
        SqlCommand forgot_command = new SqlCommand();
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        SqlDataAdapter forgot_data = new SqlDataAdapter();
        DataSet forgot_set = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {

            // Open connection
            conn.Open();
        }

        void Retrieve()
        {
            using (conn)
            {
                //Command for operations
                forgot_command.CommandText = "select Password from User_Registration where Email ='" + Username.Text + "' and Mobile ='" + Phone.Text + "' ";
                forgot_command.Connection = conn;
                forgot_data.SelectCommand = forgot_command;
                forgot_data.Fill(forgot_set, "User_Registration");
                // This condition will check if there is any data by counting the number of rows in the table. 
                int check = forgot_set.Tables[0].Rows.Count;
                // Retrieve data from dataset
                try
                {
                    string pas = forgot_set.Tables[0].Rows[0][0].ToString();
                }
                catch (Exception)
                {
                    Message.Text = "Invalid Credentials !";
                }
                conn.Close();

                // Conditions

                if (check > 0)
                {
                    try
                    {
                        string pas = forgot_set.Tables[0].Rows[0][0].ToString();
                        Message.Text = "Your Password is : " + pas;
                        conn.Close();
                    }
                    catch (Exception)
                    {
                        Message.Text = "Invalid Credentials !";
                    }

                }
                else
                {
                    Message.Text = "Entered details are invalid !";

                }

                Username.Text = "";
                Phone.Text = "";
            }
            
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Retrieve();
        }
    }
}