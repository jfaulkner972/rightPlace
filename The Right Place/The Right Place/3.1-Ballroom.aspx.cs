using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace The_Right_Place.Rooms
{
    public partial class Ballroom : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Master.changeImageSource("~/BallroomImages/ballroom.tif",//refer to page 3.1-1000 code behind
                "~/BallroomImages/rsz_ball_to_the_room.jpg",//refer to page 3.1-1000 code behind
                "~/BallroomImages/rsz_broom.jpg",//refer to page 3.1-1000 code behind
                //need two more or we just will use the three we have
                "~/BallroomImages/ballroom2New.jpg",//refer to page 3.1-1000 code behind
                "~/BallroomImages/ballroomNew.jpg");//refer to page 3.1-1000 code behind
            Master.changeRoomName = "Ballroom";
            Page.Title = "Ballroom";
            Master.changeRoomText = "The ballroom is would be most ideal for weddings, or even events that would use some style of catering. We offer only one ballroom, with in size is 20,000 square foot, for the ultimate flexibility for our clients. The rate for this room is $2000 per day, with a 15% discount when book for a multi-day or mutli-room reservations. There are also special pricing options for non-profit organizations.";
            //refer to page 3.1-1000 code behind
            //We will need to add in more description of each type of room we are offering on this website
        }
        protected void BookThisRoom_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/2-BookingPage.aspx");
        }
    }
}