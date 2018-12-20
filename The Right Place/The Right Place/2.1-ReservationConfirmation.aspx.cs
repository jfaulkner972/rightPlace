using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace The_Right_Place
{
    public partial class _2__1_ReservationConfirmation : System.Web.UI.Page
    {
        private static int i = 1;
        private static int z = 1;
        private int final = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["submittedReservation"] != null)
            {
                Reservation confirmReservation = (Reservation)Session["submittedReservation"];
                SelectedRoom.Text = confirmReservation.roomSelected;
                DailyPrice.Text = confirmReservation.pricePerDay.ToString();
                startDateTxt.Text = confirmReservation.startDate.ToString();
                endDateTxt.Text = confirmReservation.endDate.ToString();
                reservationTxt.Text = confirmReservation.reservationName;
                fNameTxt.Text = confirmReservation.fName;
                lNameTxt.Text = confirmReservation.lName;
                addressTxt.Text = confirmReservation.address;
                cityTxt.Text = confirmReservation.city;
                stateChoice.Text = confirmReservation.state;
                zipTxt.Text = confirmReservation.zip;
                phoneTxt.Text = confirmReservation.phone;
                emailTxt.Text = confirmReservation.email;
                double fPrice;
                if ((Convert.ToDateTime(confirmReservation.endDate) == Convert.ToDateTime(confirmReservation.startDate)))
                {
                    fPrice = confirmReservation.pricePerDay;
                    FinalPriceAmount.Text = fPrice.ToString();
                }
                else
                {
                    fPrice = (((Convert.ToDateTime(confirmReservation.endDate) - Convert.ToDateTime(confirmReservation.startDate)).Days) * confirmReservation.pricePerDay);
                    FinalPriceAmount.Text = fPrice.ToString();
                }
            }
        }

        private void test()
        {
            Reservation confirmReservation = (Reservation)Session["submittedReservation"];
            string test = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["F17_ksjrfaulkConnectionString"].ConnectionString;
            SqlConnection testing = new SqlConnection(test);
            testing.Open();
            using (SqlCommand key = new SqlCommand())
            {
                key.Connection = testing;
                key.CommandType = CommandType.Text;
                key.CommandText = "select max(rid) from reservation ";

                i = (Int32)key.ExecuteScalar() + 1;
            }
            using (SqlCommand fkey = new SqlCommand())
            {
                fkey.Connection = testing;
                fkey.CommandType = CommandType.Text;
                fkey.CommandText = "select max(cid) from customer";
                z = (Int32)fkey.ExecuteScalar() + 1;
            }
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.Connection = testing;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "insert into customer values (@id,@reservation,@f,@l,@address,@city,@state,@zip,@phone,@email)";
                cmd.Parameters.AddWithValue("@id", i);
                cmd.Parameters.AddWithValue("@reservation", confirmReservation.reservationName);
                cmd.Parameters.AddWithValue("@f", confirmReservation.fName);
                cmd.Parameters.AddWithValue("@l", confirmReservation.lName);
                cmd.Parameters.AddWithValue("@address", confirmReservation.address);
                cmd.Parameters.AddWithValue("@city", confirmReservation.city);
                cmd.Parameters.AddWithValue("@state", confirmReservation.state);
                cmd.Parameters.AddWithValue("@zip", confirmReservation.zip);
                cmd.Parameters.AddWithValue("@phone", confirmReservation.phone);
                cmd.Parameters.AddWithValue("@email", confirmReservation.email);
                cmd.ExecuteNonQuery();
            }
            using (SqlCommand second = new SqlCommand())
            {
                second.Connection = testing;
                second.CommandType = CommandType.Text;
                second.CommandText = "insert into reservation values (@rid,@room,@price,@start,@enddate,@final,@cusInfo)";
                second.Parameters.AddWithValue("@rid", z);
                second.Parameters.AddWithValue("@room", confirmReservation.roomSelected);
                second.Parameters.AddWithValue("@price", Convert.ToInt32(confirmReservation.pricePerDay));
                second.Parameters.AddWithValue("@start", confirmReservation.startDate);
                second.Parameters.AddWithValue("@enddate", confirmReservation.endDate);
                second.Parameters.AddWithValue("@final", final);
                second.Parameters.AddWithValue("@cusInfo", i);
                second.ExecuteNonQuery();
            }

        }

        protected void submitConfirmationButton_Click(object sender, EventArgs e)
        {
            test();
        }
    }
}