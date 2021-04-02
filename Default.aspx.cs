using System;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Web.Services;
using System.Data.SqlClient;
using System.Collections.Generic;

namespace AirBros
{

    public partial class _Default : Page
    {
        SqlConnection kon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            cal1.Visible = true;

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            cal2.Visible = true;
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            Button3.Text = Calendar1.SelectedDate.ToString("D");
            cal1.Visible = false;
        }
        protected void Calendar2_SelectionChanged(object sender, EventArgs e)
        {

            Button2.Text = Calendar2.SelectedDate.ToString("D");
            cal2.Visible = false;
        }

        
        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.Date.CompareTo(DateTime.Today) < 0)
            {
                e.Day.IsSelectable = false;
            }
            
        }
        protected void Calendar2_DayRender(object sender, DayRenderEventArgs e)
        {
            DateTime ear = DateTime.Parse(Calendar1.SelectedDate.ToShortDateString());
            if (e.Day.Date.CompareTo(ear) < 0)
            {
                e.Day.IsSelectable = false;
            }

        }

        void display()
        {
            kon.Open();
            DataTable dt = new DataTable();
            SqlDataAdapter sa = new SqlDataAdapter("select * from Flight_Data", kon);
            sa.Fill(dt);
            DataList1.DataSource = dt;
            DataList1.DataBind();
            kon.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            One.Visible = false;
            Two.Visible = false;
            display();
        }
    }
}