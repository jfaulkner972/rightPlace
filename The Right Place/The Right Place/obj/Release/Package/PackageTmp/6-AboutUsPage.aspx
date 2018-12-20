<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="6-AboutUsPage.aspx.cs" Inherits="The_Right_Place._6AboutUsPage" MasterPageFile="~/TRP.Master" %>

<%@ MasterType VirtualPath="~/TRP.Master" %>
<asp:Content ContentPlaceHolderID="headPlaceHolder" runat="server"></asp:Content>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <link href="6AboutUs.css" rel="stylesheet" />
    <!--We will need to go in and add these pictures and content to be able to style-->
    <!--Which will need to be done before the next due date-->
    <div class="form-group">
        <h1 class="text-center h1 About">More About Us</h1>
        <div class="col-sm-6 form-vertical">
            <h2 class="h2 CEO">Ema Right, CEO of The Right Place</h2>
            <br />
            <br />
            <div class="form-group">
                <img class="img Owner" src="Images/ownerOFtrp.jpg"/>
                <div class="col-sm-5">
                    <p class="p CEO">
                        Ema Right,
                    Founder and CEO of The Right Place.
                    Ms. Right is an Alumni, who saw the potential of an Event Center here in Stillwater, Oklahoma.
                    Ms. Right using her business prowess decided to make an event center here in Stillwater.  Her vision is to bring more business to Stillwater,
                    by offering The Right Place to businesses and the local community. Ms. Right knew that The Right Place could suit everyone needs. The Right Place
                    was something she had envisioned while in college here at Oklahoma State University, and is now a dream come true!     
                    </p>
                    <%--add in quote from Emma Right--%>
                    <br />
                    <br />
                    <br />
                    <p class="p CEO">
                        "I always knew that Stillwater lacked an event center and knew how great of an opportunity it would be to create The Right Place.
                        Our mission here at the Right Place is to make your experience one you will never forget, whether it be a business meeting, wedding event, 
                        or any other need. We're here to fulfill your expectations and help any way we can!"
                        <p class="text-left p CEO">- Ms. Ema Right, CEO </p>
                    </p>
                </div>
            </div>
        </div>
        <div class="col-sm-6 text-left d Who">
            <h2 class="h2 Who">Who we are, and what we are about! </h2>
            <br />
            <br />
            <br />
            <p class="p Test">
                A little bit about The Right Place. Our current Owner and CEO is Ms. Ema Right, The Right Place is a new conference and event center here in Stillwater, Oklahoma.              
The Right Place is a one of a kind here in Stilwater, with rooms that vary from a capacity of 15 people to a 1000 person auditorium. We even offer a 20,000 square foot ballroom, 
and a Courtyard that is adjacent to the ballroom allowing our guest to get the full experience of The Right Place! We are located on the West side of Stillwater, which makes for
easy access from people coming from the Oklahoma City and Tulsa areas. This is a prime location, with less congestion, and that irritating small town traffic! The Right Place is 
here for anyone who is looking for a wedding venue, hosting events, and plays, or even for business meetings, and meeting face to face with clients. We offer the flexibility and 
convenience for anyone and everyone who is looking to book a conference room, or wedding!
                <br />
                <br />
                <br />
            </p>
        </div>
    </div>
</asp:Content>


