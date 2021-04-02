using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Timers;

namespace AirBros
{
    public partial class User_Registration : System.Web.UI.Page
    {
        SqlConnection connect = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            connect.Open();
            // This code is for dropdown list
            /*SqlCommand com = new SqlCommand("select * from Country", connect);
            SqlDataAdapter datad = new SqlDataAdapter(com);
            DataSet ds = new DataSet();
            datad.Fill(ds);
            Country_TB.DataTextField = ds.Tables[0].Columns["CountryName"].ToString();
            Country_TB.DataSource = ds.Tables[0];
            Country_TB.DataBind();*/
        }

        void Register()
        {
            using (connect)
            {
                // Connection will start from here .
                SqlCommand auth = new SqlCommand();
                SqlDataAdapter data = new SqlDataAdapter();
                DataSet set = new DataSet();
                auth.CommandText = "select * from User_Registration where Email = '" + Email_TB.Text + "'";
                auth.Connection = connect;
                data.SelectCommand = auth;
                data.Fill(set);
                int check = set.Tables[0].Rows.Count;
                connect.Close();
                if (check > 0)
                {
                    Email_TB.Text = "";
                    Invalid.Text = "Username Already Exists. Try a different one.";
                }
                else
                {
                    connect.Open();
                    SqlCommand command = connect.CreateCommand();
                    command.CommandType = CommandType.Text;
                    /*,'"+ Country_TB.SelectedValue +"'*/
                    command.CommandText = "insert into User_Registration values('" + Name_TB.Text + "','" + FatherName_TB.Text + "','" + DOB_TB.Text + "','" + Phone_TB.Text + "','" + Gender.SelectedValue + "','" + Address_TB.Text + "','" + Pin.Text + "','" + Email_TB.Text + "','" + Password_TB.Text + "')";
                    command.ExecuteNonQuery();
                    Success.Text = "Registration Successful ! Redirecting to Login page ........";
                    Name_TB.Text = "";
                    FatherName_TB.Text = "";
                    DOB_TB.Text = "";
                    Phone_TB.Text = "";
                    Gender.ClearSelection();
                    Address_TB.Text = "";
                    //Country_TB.ClearSelection();
                    Pin.Text = "";
                    Email_TB.Text = "";
                    Password_TB.Text = "";
                    PasswordCheck_TB.Text = "";
                    Invalid.Text = "";
                    connect.Close();
                }
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Register();
            if (Invalid.Text == "")
            {
                Response.AddHeader("REFRESH", "3; URL =Login.aspx");
            }
        }

        protected void BtnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/");
        }
    }
}