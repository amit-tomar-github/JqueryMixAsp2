using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TarotImgTesting
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                if (!string.IsNullOrEmpty(Request.Form["name"]) && !string.IsNullOrEmpty(Request.Form["technology"]))
                {
                    lblData.Text = "Values using Form Post \n \n Name:" + Request.Form["name"].ToString();
                    Response.Write("<u>Values using Form Post</u><br /><br />");
                    Response.Write("<b>Name:</b> " + Request.Form["name"] + " <b>Technology:</b> " + Request.Form["technology"]);
                }
                if (Session["Data"] != null)
                {
                    lblData.Text = "Values using Form :" + Session["Data"].ToString();
                    hfData.Value = Session["Data"].ToString();

                    ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "Msg", "showPage();", true);
                }
            }
        }
    }
}