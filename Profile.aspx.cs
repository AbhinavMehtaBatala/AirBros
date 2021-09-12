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
    public partial class Profile : System.Web.UI.Page
    {
        SqlConnection sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["UserEmail"] != null)
            {
                Usernme.Text = Session["UserEmail"].ToString();
            }
        }

        protected void BtnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (sqlConnection)
            {
                sqlConnection.Open();
                SqlCommand command = sqlConnection.CreateCommand();
                command.CommandType = CommandType.Text;
                command.CommandText = "update User_Registration set Name ='" + Name_TB.Text + "', Father_Name='" + FatherName_TB.Text + "', DOB='" + DOB_TB.Text + "', Mobile='" + Phone_TB.Text + "', Gender='" + Gender.SelectedValue + "', Address='" + Address_TB.Text + "', Pincode='" + Pin.Text + "', Email='" + Email_TB.Text + "', Password='" + Password_TB.Text + "' where Email='" + Usernme.Text + "'";
                command.ExecuteNonQuery();
                sqlConnection.Close();
                Success.Text = " Updated Successfully !";
            }
        }

        protected void Butto34_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/");
        }
        void Authenticate()
        {
            
            {
                // This will open the connection
                sqlConnection.Open();
                //Command for operations
                SqlCommand login_command = new SqlCommand();
                SqlDataAdapter login_data = new SqlDataAdapter();
                DataSet login_set = new DataSet();
                login_command.CommandText = "select * from User_Registration where Email ='" + Usernme.Text + "'";
                login_command.Connection = sqlConnection;
                login_data.SelectCommand = login_command;
                login_data.Fill(login_set, "User_Registration");
                int checker = login_set.Tables[0].Rows.Count;
                sqlConnection.Close();
                int check = checker;
                // Conditions
                // This condition will check if there is any data by counting the number of rows in the table. 
                if (check > 0)
                {
                    upd.Visible = true;
                }
                else
                {
                    Label2.Text = "Invalid Credentials or Not Registered !";
                    HyperLink2.Visible = true;
                    upd.Visible = false;
                }
            }
        }

        void Data1()
        {
            using (sqlConnection)
            {
                sqlConnection.Open();
                SqlCommand command1 = sqlConnection.CreateCommand();
                command1.CommandType = CommandType.Text;
                command1.CommandText = "select * from User_Registration where Email ='" + Usernme.Text + "'";
                SqlDataReader dataReader = command1.ExecuteReader();
                while (dataReader.Read())
                {
                    string fname = dataReader["Name"].ToString();
                    string ffname = dataReader["Father_Name"].ToString();
                    string date = dataReader["DOB"].ToString();
                    string phone = dataReader["Mobile"].ToString();
                    Int64.Parse(phone);
                    string pincode = dataReader["Pincode"].ToString();
                    Int64.Parse(pincode);
                    string gen = dataReader["Gender"].ToString().Trim();
                    Name_TB.Text = fname;
                    FatherName_TB.Text = ffname;
                    DOB_TB.Text = DateTime.Parse(date).ToString("dd-MMM-yyyy");
                    Phone_TB.Text = phone;
                    if (gen == "Male")
                    {
                        Gender.SelectedValue = "Male";
                    }
                    else if (gen == "Female")
                    {
                        Gender.SelectedValue = "Female";
                    }
                    else
                    {
                        Gender.SelectedValue = "Non-Binary";
                    }
                    Address_TB.Text = dataReader.GetString(6);
                    Pin.Text = pincode;
                    Email_TB.Text = dataReader.GetString(8);
                    Password_TB.Text = dataReader.GetString(9);

                }
                sqlConnection.Close();
            }
            
        }

        protected void Btn1_Click(object sender, EventArgs e)
        {
            Authenticate();
            Name_TB.Enabled = true;
            FatherName_TB.Enabled = true;
            DOB_TB.Enabled = true;
            Phone_TB.Enabled = true;
            Gender.Enabled = true;
            Address_TB.Enabled = true;
            Pin.Enabled = true;
            Email_TB.Enabled = true;
            Password_TB.Enabled = true;
            Button1.Enabled = true;
            Success.Visible = true;
            Data1();
        }

        protected void vue_Click(object sender, EventArgs e)
        {
            Authenticate();
            Name_TB.Enabled = false;
            FatherName_TB.Enabled = false;
            DOB_TB.Enabled = false;
            Phone_TB.Enabled = false;
            Gender.Enabled = false;
            Address_TB.Enabled = false;
            Pin.Enabled = false;
            Email_TB.Enabled = false;
            Password_TB.Enabled = false;
            Button1.Enabled = false;
            Success.Visible = false;
            Data1();
        }
    }
}