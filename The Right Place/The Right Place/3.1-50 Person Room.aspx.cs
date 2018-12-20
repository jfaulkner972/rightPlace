using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace The_Right_Place.Rooms
{
    public partial class _50_Person_Room : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //updated images
            Master.changeImageSource("~/50pImages/50 person room 1.jpg",//refer to page 3.1-1000 code behind
                "~/50pImages/rsz_50_per.jpg",//refer to page 3.1-1000 code behind
                "~/50pImages/rsz_50_room.jpg",//refer to page 3.1-1000 code behind
                //need two more 50 person rooms
                "~/50pImages/50new.jpg",//refer to page 3.1-1000 code behind
                "~/50pImages/50new1.jpg");//refer to page 3.1-1000 code behind
            Master.changeRoomName = "50 Person Room";
            Page.Title = "50 Person Title";
            Master.changeRoomText = "This conference room holds up to 50 people max, where one could hold business conferences, or even walk-in style interviews. We offer four 50 person rooms, with the latest presentation technology features to provide numerous options for presenters and participants. The rate for this room is $200 per day, with a 15% discount when book for a multi-day or mutli-room reservations. There are also special pricing options for non-profit organizations.";
            //refer to page 3.1-1000 code behind
            //We will need to add in more description of each type of room we are offering on this website
        }
        protected void BookThisRoom_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/2-BookingPage.aspx");
        }
    }
}