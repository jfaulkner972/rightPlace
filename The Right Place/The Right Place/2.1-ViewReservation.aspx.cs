using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace The_Right_Place
{
    public partial class _2__1_ViewReservation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Title = "View Reservation";//refer to page 1-Home code behind
            Master.changePageHeader = "View Reservation";//refer to page 1-Home code behind
        }

        private void bind()
        {
            string connect = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["F17_ksjrfaulkConnectionString"].ConnectionString;
            SqlConnection connecting = new SqlConnection(connect);
            connecting.Open();
            using (SqlCommand search = new SqlCommand())
            {
                search.Connection = connecting;
                search.CommandType = CommandType.Text;
                search.CommandText = "select rid as '  Reservation #  ', selectedRoom as '  Booked Room  ', pricePerDay as '  Daily Rate  ', startDate as '  Check In Date  ', endDate as '  Check Out Date  ', finalPrice as '  Amount Due  ', reservationName as '  Name of the Reservation  ', firstName as '  First Name  ', lastName as '  Last Name  ', streetAddress as '   Street Address  ', city as '  City  ', cState as '  State  ', zipCode as '  Zip  ', phone as '  Phone Number  ', email as '  Email Address  ' from reservation r join customer c on c.cid = r.customerInfo where rid = " + customerReservationNumber.Text + ";";

                DataTable test = new DataTable();
                SqlDataAdapter info = new SqlDataAdapter(search);
                info.Fill(test);
                GridView1.DataSource = test;
                GridView1.DataBind();
            }
        }

        protected void test_Click(object sender, EventArgs e)
        {
            bind();
            GridView1.Visible = true;
        }
    }
}