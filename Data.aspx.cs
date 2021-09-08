using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace AirBros
{
    public partial class Data : System.Web.UI.Page
    {
        String confmgr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            display();
        }

        void display()
        {
            using (var sql = new SqlConnection(confmgr))
            {
                sql.Open();
                SqlCommand cmd = new SqlCommand("select * from User_Registration", sql);
                SqlDataReader data = cmd.ExecuteReader();
                GridView1.DataSource = data;
                GridView1.DataBind();
                sql.Close();
            }
            
        }
        void insert()
        {
            using (var sql = new SqlConnection(confmgr))
            {
                sql.Open();
                SqlCommand auth = new SqlCommand();
                SqlDataAdapter data = new SqlDataAdapter();
                DataSet set = new DataSet();
                auth.CommandText = "select * from User_Registration where Email = '" + Email_TB.Text + "'";
                auth.Connection = sql;
                data.SelectCommand = auth;
                data.Fill(set);
                int check = set.Tables[0].Rows.Count;
                sql.Close();
                if (check > 0)
                {
                    Email_TB.Text = "";
                    Invalid.Text = "Username Already Exists. Try a different one.";
                }
                else
                {
                    sql.Open();
                    SqlCommand command = sql.CreateCommand();
                    command.CommandType = CommandType.Text;
                    /*,'"+ Country_TB.SelectedValue +"'*/
                    command.CommandText = "insert into User_Registration values('" + Name_TB.Text + "','" + FatherName_TB.Text + "','" + DOB_TB.Text + "','" + Phone_TB.Text + "','" + Gender.SelectedValue + "','" + Address_TB.Text + "','" + Pin.Text + "','" + Email_TB.Text + "','" + Password_TB.Text + "')";
                    command.ExecuteNonQuery();
                    Success.Text = "Registration Successful !";
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
                    sql.Close();
                }
            }
            
        }
        void update_l()
        {
            using (var sql = new SqlConnection(confmgr))
            {
                sql.Open();
                SqlCommand command1 = new SqlCommand("select * from User_Registration where Email = '" + Username.Text + "'", sql);
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
                    FN.Text = fname;
                    FFN.Text = ffname;
                    DATEE.Text = DateTime.Parse(date).ToString("dd-MMM-yyyy");
                    PHON.Text = phone;
                    if (gen == "Male")
                    {
                        GENDR.SelectedValue = "Male";
                    }
                    else if (gen == "Female")
                    {
                        GENDR.SelectedValue = "Female";
                    }
                    else
                    {
                        GENDR.SelectedValue = "Non-Binary";
                    }
                    ADDR.Text = dataReader.GetString(6);
                    PINCODE.Text = pincode;
                    EMIL.Text = dataReader.GetString(8);
                    PASSW.Text = dataReader.GetString(9);

                }
                sql.Close();
            }
        }
        void update_h()
        {
            using (var sql = new SqlConnection(confmgr))
            {
                sql.Open();
                SqlCommand command = sql.CreateCommand();
                command.CommandType = CommandType.Text;
                command.CommandText = "update User_Registration set Name ='" + FN.Text + "', Father_Name='" + FFN.Text + "', DOB='" + DATEE.Text + "', Mobile='" + PHON.Text + "', Gender='" + GENDR.SelectedValue + "', Address='" + ADDR.Text + "', Pincode='" + PINCODE.Text + "', Email='" + EMIL.Text + "', Password='" + PASSW.Text + "' where Email='" + Username.Text + "'";
                command.ExecuteNonQuery();
                sql.Close();
                Suc.Text = " Updated Successfully !";
            }
            
        }

        void delete()
        {
            using (var sql = new SqlConnection(confmgr))
            {
                sql.Open();
                SqlCommand auth = new SqlCommand();
                SqlDataAdapter data = new SqlDataAdapter();
                DataSet set = new DataSet();
                auth.CommandText = "select * from User_Registration where Email = '" + Email2.Text + "'";
                auth.Connection = sql;
                data.SelectCommand = auth;
                data.Fill(set);
                int chec = set.Tables[0].Rows.Count;
                if (chec > 0)
                {
                    SqlCommand cmd = sql.CreateCommand();
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "delete from User_Registration where Email='" + Email2.Text + "'";
                    cmd.ExecuteNonQuery();
                    sql.Close();
                    Lael6.Text = "Record deleted successfully";
                }
                else
                {
                    sql.Close();
                    Lael6.Text = "Record not found";

                }
            }
            
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            if (RB1.Checked)
            {
                disply.Visible = true;
                insrt.Visible = false;
                updat.Visible = false;
                delet.Visible = false;
                updat1.Visible = false;
            }
            else if (RB2.Checked)
            {
                disply.Visible = false;
                insrt.Visible = true;
                updat.Visible = false;
                delet.Visible = false;
                updat1.Visible = false;
            }
            else if (RB3.Checked)
            {
                disply.Visible = false;
                insrt.Visible = false;
                updat.Visible = true;
                delet.Visible = false;
                updat1.Visible = false;
            }
            else if (RB4.Checked)
            {
                disply.Visible = false;
                insrt.Visible = false;
                updat.Visible = false;
                delet.Visible = true;
                updat1.Visible = false;
            }
            else
            {
                disply.Visible = false;
                insrt.Visible = false;
                updat.Visible = false;
                delet.Visible = false;
                updat1.Visible = false;
            }
        }


        protected void Button5_Click(object sender, EventArgs e)
        {
            insert();
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            disply.Visible = false;
            insrt.Visible = false;
            updat.Visible = false;
            delet.Visible = false;
            RB2.Checked = false;
            updat1.Visible = false;
        }

        protected void Btn1_Click(object sender, EventArgs e)
        {
            using (var sql = new SqlConnection(confmgr))
            {
                // This will open the connection
                sql.Open();
                //Command for operations
                SqlCommand login_command = new SqlCommand();
                SqlDataAdapter login_data = new SqlDataAdapter();
                DataSet login_set = new DataSet();
                login_command.CommandText = "select * from User_Registration where Email ='" + Username.Text + "' ";
                login_command.Connection = sql;
                login_data.SelectCommand = login_command;
                login_data.Fill(login_set, "User_Registration");
                int checker = login_set.Tables[0].Rows.Count;
                sql.Close();
                // Conditions
                // This condition will check if there is any data by counting the number of rows in the table. 
                if (checker > 0)
                {
                    HyperLink2.Visible = false;
                    Label2.Text = "";
                    updat1.Visible = true;
                    update_l();

                }
                else
                {
                    Label2.Text = "Invalid Credentials or Not Registered !";
                    HyperLink2.Visible = true;
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            update_h();
        }

        protected void Butn1_Click(object sender, EventArgs e)
        {
            disply.Visible = false;
            insrt.Visible = false;
            updat.Visible = true;
            delet.Visible = false;
            RB2.Checked = false;
            updat1.Visible = false;
        }

        protected void Buton4_Click(object sender, EventArgs e)
        {
            delete();
        }

    }
}