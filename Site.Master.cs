using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace AirBros
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["UserEmail"] != null)
            {
                prof.Visible = true;
                Logout.Visible = true;
                UserRegistrationIcon.Visible = false;
                log.Visible = false;
            }
            else
            {
                prof.Visible = false;
                Logout.Visible = false;
            }
        }

        public HtmlAnchor User_Profile
        {
            get
            {
                return pro;
            }
        }

        protected void Logoutlink_Click(object sender, ImageClickEventArgs e)
        {
            Session.Abandon();
            Response.Redirect("~/");
        }
    }
}