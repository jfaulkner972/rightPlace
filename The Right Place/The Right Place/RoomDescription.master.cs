using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace The_Right_Place
{
    public partial class RoomDescription : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void changeImageSource(string a, string b, string c, string d, string e)//changes the picture based on what room page you are viewing
        {
            {
                ImageCenter.ImageUrl = a;
                addImage1.ImageUrl = b;
                addImage2.ImageUrl = c;
                addImage3.ImageUrl = d;
                addImage4.ImageUrl = e;
            }
        }

        public string changeRoomText//changes the text of the text box to long room description
        {
            set { roomDescriptionParagraph.Text = value; }
        }

        public string changeRoomName//changes the text of the h3 tag to room name
        {
            set { RoomPageName.Text = value; }
        }

        protected void BookThisRoom_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/2-BookingPage.aspx");
        }
    }
}