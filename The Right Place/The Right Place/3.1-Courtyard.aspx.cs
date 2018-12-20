using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace The_Right_Place.Rooms
{
    public partial class Courtyard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //updated images
            Master.changeImageSource("~/CourtYardImages/courtyard.jpg",//refer to page 3.1-1000 code behind
                "~/CourtYardImages/rsz_1courtyard2.jpg",//refer to page 3.1-1000 code behind
                "~/CourtYardImages/rsz_courtyard.jpg",//refer to page 3.1-1000 code behind
                //need two more?
                "~/CourtYardImages/courtyard2New.jpg",//refer to page 3.1-1000 code behind
                "~/CourtYardImages/courtyardNew.jpg");//refer to page 3.1-1000 code behind
            Master.changeRoomName = "Courtyard";
            Page.Title = "Courtyard";
            Master.changeRoomText = "The courtyard would be most ideal for weddings, where rather being inside, the courtyard offers an outside style for a wedding. We offer one courtyard, which is adjacent to the ballroom for outside events. The rate for this room is $1000 per day, with a 15% discount when book for a multi-day or mutli-room reservations. There are also special pricing options for non-profit organizations.";
            //refer to page 3.1-1000 code behind
            //We will need to add in more description of each type of room we are offering on this website

        }
        protected void BookThisRoom_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/2-BookingPage.aspx");
        }
    }
}