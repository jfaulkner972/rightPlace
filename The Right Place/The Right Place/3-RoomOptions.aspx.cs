using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace The_Right_Place
{
    public partial class _3RoomOptions : System.Web.UI.Page
    {
        public static int i = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Title = "Room Options";//refer to page 1-Home code behind
            Master.changePageHeader = "Room Options";//refer to page 1-Home code behind
            roomImage.ImageUrl = "~/Images/15 person room 2.jpg";
        }

        protected void Slideshow_Tick(object sender, EventArgs e)
        {
            slideURL();
        }

        public void slideURL()
        {
            if (i == 7)
            {
                i = 0;
            }
            if (i == 0)
            {
                i = i + 1;
                roomImage.ImageUrl = "~/15pImages/15 person room 2.jpg";
                roomLink.NavigateUrl = "~/3.1-15 Person Room.aspx";
            }
            else if (i == 1)
            {
                roomImage.ImageUrl = "~/50pImages/50 person room 1.jpg";
                roomLink.NavigateUrl = "~/3.1-50 Person Room.aspx";
                i = i + 1;
            }
            else if (i == 2)
            {
                roomImage.ImageUrl = "~/200pImages/200 person room.jpg";
                roomLink.NavigateUrl = "~/3.1-200 Person Room.aspx";
                i++;
            }
            else if (i == 3)
            {
                roomImage.ImageUrl = "~/1000pImages/1000 person room.tif";
                roomLink.NavigateUrl = "~/3.1-1000 Person Room.aspx";
                i++;
            }
            else if (i == 4)
            {
                roomImage.ImageUrl = "~/BallroomImages/ballroom.tif";
                roomLink.NavigateUrl = "~/3.1-Ballroom.aspx";
                i++;
            }
            else if (i == 5)
            {
                roomImage.ImageUrl = "~/CourtYardImages/courtyard.jpg";
                roomLink.NavigateUrl = "~/3.1-Courtyard.aspx";
                i++;
            }
            else if (i == 6)
            {
                roomImage.ImageUrl = "~/smallImages/multi purpose room.jpg";
                roomLink.NavigateUrl = "~/3.1-Small Room.aspx";
                i++;
            }
        }

        protected void lbBallroom_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/3.1-Ballroom.aspx");
        }

        protected void lbCourtyard_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/3.1-Courtyard.aspx");
        }

        protected void lbAuditorium_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/3.1-1000 Person Room.aspx");
        }

        protected void lb200person_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/3.1-200 Person Room.aspx");
        }

        protected void lb50person_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/3.1-50 Person Room.aspx");
        }

        protected void lb15person_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/3.1-15 Person Room.aspx");
        }

        protected void lblSmall_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/3.1-Small Rooms.aspx");
        }
    }
}