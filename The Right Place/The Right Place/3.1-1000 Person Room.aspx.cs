using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace The_Right_Place.Rooms
{
    public partial class _1000_Person_Room : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*wanted to have one room page that all info could be loaded into.
            That was too complicated/I need more time to think about it
            so this is what we're left with. Load each rooms picture and description here. Button redirect stuff somewhere/tbd*/
            Master.changeImageSource("~/1000pImages/1000 person room.tif",//change main room imgae
                "~/1000pImages/rsz_1000_p.jpg", //change additional image 1
                "~/1000pImages/rsz_1000_per.jpg", //change additional image 2
                "~/1000pImages/rsz_1000_perso.jpg", //change additional image 3
                "~/1000pImages/rsz_1000p.jpg");//change additional image 4
            Master.changeRoomName = "Auditorium Room";//refer to page 1-Home code behind
            Page.Title = "1000 Person Title";//refer to page 1-Home code behind
            Master.changeRoomText = "This is the room that fits up to 1000 people total, this is our biggest conference room we have here at The Right Place. We offer this room with the latest technology, available for presenter and participants. The rate for this room is $1000 per day, with a 15% discount when book for a multi-day or mutli-room reservations. There are also special pricing options for non-profit organizations." ;
            //above is the paragraph that describes the room
            //button code that redirects to booking goes somewhere we'll see where it ends up
            //We will need to add in more description of each type of room we are offering on this website

        }

        protected void BookThisRoom_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/2-BookingPage.aspx");
        }
    }
}