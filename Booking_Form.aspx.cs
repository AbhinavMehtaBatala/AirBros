using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AirBros
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {

                if (Session["From"] == null)
                {
                    Labelll.Text = "This does not work !!!";
                }
                else
                {
                    Labelll.Text = (string)Session["From"];
                }
            }
            else
            {
                Response.Redirect("Error.aspx");
            }
        }
    }
}