using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace The_Right_Place.Rooms
{
    public partial class _200_Person_Room : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //changed images
            Master.changeImageSource("~/200pImages/200 person room.jpg",//refer to page 3.1-1000 code behind
                "~/200pImages/rsz_200_per.jpg",//refer to page 3.1-1000 code behind
                "~/200pImages/rsz_200_person.jpg",//refer to page 3.1-1000 code behind
                //still need to find two more 200 person images
                "~/200pImages/200new.jpg",//refer to page 3.1-1000 code behind
                "~/200pImages/200pernew.jpg");//refer to page 3.1-1000 code behind
            Master.changeRoomName = "200 Person Room";
            Page.Title = "200 Person Title";
            Master.changeRoomText = "This conference room holds up to 200 people max, which would be considered a general purpose area, for multiple uses. We offer four 200 person rooms, with sliding dividers to make the rooms either larger or smaller. The rate for this room is $400 per day, with a 15% discount when book for a multi-day or mutli-room reservations. There are also special pricing options for non-profit organizations.";
            //refer to page 3.1-1000 code behind
            //We will need to add in more description of each type of room we are offering on this website
        }
        protected void BookThisRoom_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/2-BookingPage.aspx");
        }
    }
}