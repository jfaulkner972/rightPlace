using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace The_Right_Place.Rooms
{
    public partial class Small_Rooms : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Master.changeImageSource("~/smallImages/multi purpose room.jpg",//refer to page 3.1-1000 code behind
                "~/smallImages/rsz_multipurpose.jpg",//refer to page 3.1-1000 code behind
                "~/smallImages/smallMProom.jpg",//refer to page 3.1-1000 code behind
                "~/smallImages/multipupNew.jpg",//refer to page 3.1-1000 code behind
                "~/smallImages/multipurp2New.jpg");//refer to page 3.1-1000 code behind
            Master.changeRoomName = "Small Rooms";
            Page.Title = "Small Rooms";
            Master.changeRoomText = "Small Room styles would be most ideal for business conferences with few people, or any kind of meeting that only has around a handful of people. We offer two small multi purpose rooms, which is ideal for weddings (changing rooms), and even ideal for plays or events that involve changing. The rate for this room is $25 per day, with a 15% discount when book for a multi-day or mutli-room reservations. There are also special pricing options for non-profit organizations.";
            //refer to page 3.1-1000 code behind
            //We will need to add in more description of each type of room we are offering on this website

        }
        protected void BookThisRoom_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/2-BookingPage.aspx");
        }
    }
}