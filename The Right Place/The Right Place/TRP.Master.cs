using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace The_Right_Place
{
    public partial class TRP : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public string changePageHeader//change page header name
        {
            set { pageHeader.Text = value; }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)//Room DDL redirect
        {
            if (RoomList.SelectedIndex == 1)
            {
                Response.Redirect("~/3-RoomOptions.aspx");
            }
            else if (RoomList.SelectedIndex == 2)
            {
                Response.Redirect("~/3.1-Small Rooms.aspx");
            }
            else if (RoomList.SelectedIndex == 3)
            {
                Response.Redirect("~/3.1-15 Person Room.aspx");
            }
            else if (RoomList.SelectedIndex == 4)
            {
                Response.Redirect("~/3.1-50 Person Room.aspx");
            }
            else if (RoomList.SelectedIndex == 5)
            {
                Response.Redirect("~/3.1-200 Person Room.aspx");
            }
            else if (RoomList.SelectedIndex == 6)
            {
                Response.Redirect("~/3.1-1000 Person Room.aspx");
            }
            else if (RoomList.SelectedIndex == 7)
            {
                Response.Redirect("~/3.1-Ballroom.aspx");
            }
            else if (RoomList.SelectedIndex == 8)
            {
                Response.Redirect("~/3.1-Courtyard.aspx");
            }
        }

        protected void BookingOptionList_SelectedIndexChanged(object sender, EventArgs e)//Booking DDL redirect code
        {
            if (BookingOptionList.SelectedIndex == 1)
            {
                Response.Redirect("~/2-BookingPage.aspx");
            }
            else if (BookingOptionList.SelectedIndex == 2)
            {
                Response.Redirect("~/2.1-ViewAvailability.aspx");
            }
            else if (BookingOptionList.SelectedIndex == 3)
            {
                Response.Redirect("~/2.1-ViewReservation.aspx");
            }
        }
    }
}