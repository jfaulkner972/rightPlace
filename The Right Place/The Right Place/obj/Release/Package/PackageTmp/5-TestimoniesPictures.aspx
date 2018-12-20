<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="5-TestimoniesPictures.aspx.cs" Inherits="The_Right_Place._5TestimoniesPictures" MasterPageFile="~/TRP.Master" %>

<%@ MasterType VirtualPath="~/TRP.Master" %>
<asp:Content ContentPlaceHolderID="headPlaceHolder" runat="server"></asp:Content>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <link href="5TestimoniesPictures.css" rel="stylesheet" />
    <div class="form-vertical">
        <div class="form-group">
            <!--Add in pictures when we know what we want to do here-->
            <!--Simple CSS sheet for this page-->
            <!--Unsure what we want to put here at the moment, this is something we will dicuss next week-->
            <div class="col-sm-8 text-center" id="div1">
                <h2 class="text-center">Testimonials</h2>
                <br />
                <br />
                <br />
                <div class="form-vertical">
                    <div class="col-sm-2">
                        <img id="imgAmber" src="Images/amber.jpg" class="media-left" />
                    </div>
                    <div class="form-group">
                        <div id="divAmber" class="col-sm-6 text-left">
                            <p>"My husband and I got married here at The Right Place, and we fell in love with the 
                            ballroom it was breathtaking and the perfect fit for all our guest and family members.
                            The staff was so professional and took care of our every need. I would definitely
                            recommend this event center to anyone looking for an amazing venue!"</p>
                            <br />
                            <br />
                            <h4 class="text-left">- Amber Richardson</h4>
                        </div>
                    </div>
                </div>
                <br />
                <br />
                <br />
                <div class="form-vertical">
                    <div class="col-sm-2">
                        <img id="imgJoanne" src="Images/Joanne.jpg" class="media-left"/>
                    </div>
                    <div class="form-group">
                        <div id="divJoanne" class="col-sm-6 text-left">
                            <p>"My Company always books at The Right Place for conference rooms when we come to
                            Stillwater for business, and the rooms are always so clean and organized. They have
                            exceptional staff to help if needed to set up for our presentations. Always a pleasure
                            come here!"</p>
                            <br />
                            <h4 class="text-left">- Joann Caldwell</h4>
                            <br />
                        </div>
                    </div>
                </div>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            </div>
            <!--Adding extra pictures from the testimonial side?-->
            <div class="col-sm-4 text-left">
                <!--Had to change this to h6 which is unused.. to just format, can't figure out how to call seperate header tags in CSS-->
                <div class="form-horizontal">
                    <h6>See who has tweeted about us!<img id="imgTwitter" src="Images/twitterLogo.jpg"/></h6>
                    &nbsp;</div>
                <div>
                    <br />
                    <br />
                    <p>"The Right Place always exceeds my expectations when we visit,</p>
                    <p>it's so beautiful and a nice place to have our company conferences"</p>
                    <p>- Ricky Fowler</p>
                    <br />
                    <br />
                </div>
                <br />
                <br />
                <div>
                    <br />
                    <br />
                    <p>"I got married at The Right Place event center and couldn't be</p>
                    <p>happier with how beautiful the courtyard and ballroom areas are!"</p>
                    <p>- Jesse Starr</p>
                    <br />
                    <br />
                </div>
                <br />
                <br />
                <div>
                    <br />
                    <br />
                    <p>"I love when our company books us at The Right Place, it's a </p>
                    <p>breath of fresh air, and I love how comfortable the conference</p>
                    <p>rooms are!" - Peter Wentz</p>
                    <br />
                    <br />
                </div>
            </div>
        </div>
    </div>
</asp:Content>

