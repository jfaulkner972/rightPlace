using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace The_Right_Place
{
    public partial class Page2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Title = "Booking Page";//refer to page 1-Home code behind
            Master.changePageHeader = "Book Your Reservation Today!";//refer to page 1-Home code behind
            if (!IsPostBack && Session["selectedRoom"] != null)
            {
                BookingDDL.SelectedIndex = Convert.ToInt32(Session["selectedRoom"]);
                setPrice(Convert.ToInt32(Session["selectedRoom"]));
            }

        }

        public void setPrice(int x)
        {
            if (x == 0)
            {
                DailyPrice.Text = "";
            }
            else if (x == 1)
            {
                DailyPrice.Text = "100.00";
            }
            else if (x == 2)
            {
                DailyPrice.Text = "200.00";
            }
            else if (x == 3)
            {
                DailyPrice.Text = "400.00";
            }
            else if (x == 4)
            {
                DailyPrice.Text = "1000.00";
            }
            else if (x == 5)
            {
                DailyPrice.Text = "2000.00";
            }
            else if (x == 6)
            {
                DailyPrice.Text = "1000.00";
            }
            else if (x == 7)
            {
                DailyPrice.Text = "25.00";
            }
        }

        protected void BookingDDL_SelectedIndexChanged(object sender, EventArgs e)
        {
            int y = BookingDDL.SelectedIndex;
            setPrice(y);
        }

        protected void submitReservationButton_Click(object sender, EventArgs e)
        {
            Reservation customerReservation = new Reservation();
            if (BookingDDL.SelectedIndex == 1)
            {
                customerReservation.roomSelected = "15 Person Room";
            }
            else if (BookingDDL.SelectedIndex == 2)
            {
                customerReservation.roomSelected = "50 Person Room";
            }
            else if (BookingDDL.SelectedIndex == 3)
            {
                customerReservation.roomSelected = "200 Person Room";
            }
            else if (BookingDDL.SelectedIndex == 4)
            {
                customerReservation.roomSelected = "1000 Person Room";
            }
            else if (BookingDDL.SelectedIndex == 5)
            {
                customerReservation.roomSelected = "Ballroom";
            }
            else if (BookingDDL.SelectedIndex == 6)
            {
                customerReservation.roomSelected = "Courtyard";
            }
            else if (BookingDDL.SelectedIndex == 7)
            {
                customerReservation.roomSelected = "Small Room";
            }
            customerReservation.pricePerDay = Convert.ToDouble(DailyPrice.Text);
            customerReservation.startDate = startDateTxt.Text;
            customerReservation.endDate = endDateTxt.Text;
            customerReservation.reservationName = reservationTxt.Text;
            customerReservation.fName = fNameTxt.Text;
            customerReservation.lName = lNameTxt.Text;
            customerReservation.address = addressTxt.Text;
            customerReservation.city = cityTxt.Text;
            customerReservation.state = StateDDL.SelectedValue;
            customerReservation.zip = zipTxt.Text;
            customerReservation.phone = phoneTxt.Text;
            customerReservation.email = emailTxt.Text;

            Session["submittedReservation"] = customerReservation;
            Response.Redirect("~/2.1-ReservationConfirmation.aspx");
        }
    }
}