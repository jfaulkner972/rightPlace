using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace The_Right_Place
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Title = "Home";/*sets tab name*/
            //Master.changePageHeader = "Home";//sets page name on page
        }

        protected void btnBooking_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("~/2-BookingPage.aspx");
        }
    }
}