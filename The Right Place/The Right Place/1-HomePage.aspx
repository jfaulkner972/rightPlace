<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="1-HomePage.aspx.cs" Inherits="The_Right_Place.HomePage" MasterPageFile="~/TRP.Master" %>

<%@ MasterType VirtualPath="~/TRP.Master" %>
<asp:Content ContentPlaceHolderID="headPlaceHolder" runat="server"></asp:Content>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <link href="1HomePage.css" rel="stylesheet" />
    <%--content code--%>
    <div class="form-group">
        <div class="col-sm-12 text-center">
            <!--Room Options, redirect to the room option page-->
            <h2 id="HPheader">Looking for somewhere to host your event? You've come to The Right Place! </h2>
            <%--added interesting event's/parties/meetings --%>
            <br />
            <br />
            <br />
            <div class="form-group">
                <div class="col-sm-3">
                    <!--Will need to add image, and redirection to room options for all?-->
                    <img src="HomePageImages/rsz_coporate_meeting.jpg"/>
                    <%--Corporate Meetings--%>
                    <h4>
                        <asp:HyperLink ID="HyperLinkH1" runat="server" Text="Corporate Meetings" NavigateUrl="~/3-RoomOptions.aspx" ForeColor="OrangeRed"></asp:HyperLink></h4>
                </div>
                <div class="col-sm-3">
                    <img src="HomePageImages/bride-and-groom-wedding-rings.jpg"/>
                    <%--Wedding Parties--%>
                    <h4>
                        <asp:HyperLink ID="HyperLinkH2" runat="server" Text="Wedding Events" NavigateUrl="~/3.1-Ballroom.aspx" ForeColor="OrangeRed"></asp:HyperLink></h4>
                </div>
                <div class="col-sm-3">
                    <img src="HomePageImages/rsz_muscial.jpg"/>
                    <%--Musical/Play events--%>
                    <h4>
                        <asp:HyperLink ID="HyperLinkH3" runat="server" Text="Musical/Play Events" NavigateUrl="~/3.1-1000 Person Room.aspx" ForeColor="OrangeRed"></asp:HyperLink></h4>
                </div>
                <div class="col-sm-3">
                    <img src="HomePageImages/rsz_1community.jpg"/>
                    <%--Community Presentations--%>
                    <h4>
                        <asp:HyperLink ID="HyperLinkH4" runat="server" Text="Community Presentations" NavigateUrl="~/3-RoomOptions.aspx" ForeColor="OrangeRed"></asp:HyperLink></h4>
                </div>

            </div>

        </div>
    </div>
    <!--keep this under "find a room" but need to condense more-->
    <div class="col-sm-6 text-center">
        <!--Booking redirect image-->
        <h3>Book and Manage your Reservation Today!</h3>
        <br />
        <div class="form-group">
            <div class="col-sm-6 text-right">
                <img src="Images/frontEventCenter.jpg" />
            </div>
            <div class="col-sm-5 text-left">
                <h4>Ample parking provides a free option for all guests!</h4>
                <br />
                <h4>Catering services are also available on site</h4>
                <br />
                <h4>Flexible services and staff to fulfill your needs!</h4>
            </div>
        </div>

    </div>
    <div class="form-group">
        <div class="col-sm-6 text-left">
            <!--Staff Page Redirect-->
            <h3>Having trouble planning your event? Let one of our friendly and knowledgable staff members help you!</h3>
            <br />
            <div class="text-left">
                <h4>See who can help you out with your events and business meetings</h4>
                <h4>Check out our head chef for our superb catering!</h4>
                <h4>Contact information is available within the staff page!</h4>
                <h4>
                    <asp:HyperLink ID="HyperLink1" runat="server" Text="Check our staff page out for all your needs here!" NavigateUrl="~/4-StaffPage.aspx" ForeColor="OrangeRed"></asp:HyperLink></h4>
            </div>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-12 text-center">
            <asp:Button ID="btnBooking" runat="server" Text="Book your event today!" OnClick="btnBooking_Click" Width="300px" CssClass="btnHomeBook" />
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-6 text-center">
            <!--Testimonial Redirect-->
            <h3>What have people said about The Right Place?</h3>
            <h4>
                <asp:HyperLink ID="HyperLink2" runat="server" Text="Check us out here!" NavigateUrl="~/5-TestimoniesPictures.aspx" ForeColor="OrangeRed"></asp:HyperLink></h4>
        </div>
        <div class="col-sm-6 text-center">
            <!--About us redirect-->
            <h3>Learn more about us and what we offer here at The Right Place!</h3>
            <h4>
                <asp:HyperLink ID="HyperLink3" runat="server" Text="More about us" NavigateUrl="~/6-AboutUsPage.aspx" ForeColor="OrangeRed"></asp:HyperLink></h4>
        </div>
    </div>
</asp:Content>





