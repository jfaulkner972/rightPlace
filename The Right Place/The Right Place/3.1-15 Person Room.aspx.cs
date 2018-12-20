using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace The_Right_Place.Rooms
{
    public partial class _15_Person_Room : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //changed images
            Master.changeImageSource("~/15pImages/15 person room 2.jpg",//refer to page 3.1-1000 code behind
                "~/15pImages/rsz_15_p.jpg",//refer to page 3.1-1000 code behind
                "~/15pImages/rsz_15_person_room.jpg",//refer to page 3.1-1000 code behind
                "~/15pImages/rsz_15p.jpg",//refer to page 3.1-1000 code behind
                "~/15pImages/rsz_15person.jpg");//refer to page 3.1-1000 code behind
            Master.changeRoomName = "15 Person Room";//refer to page 1-Home code behind
            Page.Title = "15 Person Title";//refer to page 1-Home code behind
            Master.changeRoomText = "This conference room holds up to 15 people max, where this is more of a meeting type room for employees or a business group. There are two rooms, that will fit 15 people, wiht high-end technology features. The rate for this room is $100 per day, with a 15% discount when book for a multi-day or mutli-room reservations. There are also special pricing options for non-profit organizations.";
            //refer to page 3.1-1000 code behind
            //We will need to add in more description of each type of room we are offering on this website

        }
        protected void BookThisRoom_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/2-BookingPage.aspx");
        }
    }
}