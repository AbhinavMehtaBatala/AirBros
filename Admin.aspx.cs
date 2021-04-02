using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AirBros
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login_Click(object sender, EventArgs e)
        {
            if (Username.Text == "admin")
            {
                if (Password.Text == "airbros")
                {
                    Texter.Text = "Login Successful <br />Fetching Data.....";
                    Response.AddHeader("REFRESH", "3; URL =Data.aspx");
                }
                else
                {
                    Texter.Text = "Wrong Password ! ";
                }
            }
            else
            {
                Texter.Text = "Invalid Admin ! ";
            }
        }
    }
}