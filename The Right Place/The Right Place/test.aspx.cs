using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace The_Right_Place
{
    public partial class test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string main, add1, add2, add3, add4;//figure out how to load all pages with information
            Master.changeImageSource("~/Images/mountaintest.jpg","","","","");
            Master.changeRoomName = "";
            Master.changeRoomText = "";
        }

        
    }
}