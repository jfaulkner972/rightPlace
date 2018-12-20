<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="3-RoomOptions.aspx.cs" Inherits="The_Right_Place._3RoomOptions" MasterPageFile="~/TRP.Master" %>

<%@ MasterType VirtualPath="~/TRP.Master" %>
<asp:Content ContentPlaceHolderID="headPlaceHolder" runat="server"></asp:Content>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <link href="3RoomOptions.css" rel="stylesheet" />
    <div class="form-group">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div class="col-sm-4">
                    <h3 class="text-left">Are you looking for The Right Place to have your Wedding or Formal event?</h3>
                    <br />
                    <br />
                    <h4 class="text-left"> Check out our Ballroom for your ideal wedding!</h4>
                    <h5 class="text-left"> Our Ballroom is 20,000 square foot to accomodate all your needs.</h5>
                    <h5 class="text-left"> Our Ballroom also has a dancefloor, for you to show off those moves!</h5>
                    <h5 class="text-left"> Catering is also available on site</h5>
                    <br />
                    <asp:LinkButton ID="lbBallroom" runat="server" Text="Check out our Ballroom here!" OnClick="lbBallroom_Click" CssClass="lbBallroom"></asp:LinkButton>
                    <br />
                    <br />
                    <h4 class="text-left"> Looking for an outside wedding? look no further!</h4>
                    <h5 class="text-left"> Check out our awesome Courtyard!</h5>
                    <h5 class="text-left"> Adjacent to the ballroom for outdoor events</h5>
                    <h5 class="text-left"> A perfect setting for your cocktail parties!</h5>
                    <br />
                    <asp:LinkButton ID="lbCourtyard" runat="server" Text="Check out our Courtyard here!" OnClick="lbCourtyard_Click" CssClass="lbCourtyard"></asp:LinkButton>
                    <br />
                    <br />
                    <h4>We even have small multi-purpose rooms for your weddings, events, and meetings</h4>
                    <h5>These rooms are ideal for groomsmen and bridesmaids!</h5>
                    <h5>Or even changing rooms for plays or events!</h5>
                    <br />
                    <asp:LinkButton ID="lblSmall" runat="server" Text="Check out our Multi-purpose rooms here!" OnClick="lblSmall_Click" CssClass="lbSmall"></asp:LinkButton>
                </div>
                <div class="col-sm-4 center-block">
                    <br />
                <asp:Timer runat="server" OnTick="Slideshow_Tick" Interval="4000"></asp:Timer>
                <asp:HyperLink ID="roomLink" runat="server" NavigateUrl="~/3.1-15 Person Room.aspx">
                    <asp:Image ID="roomImage" runat="server"  CssClass="SlideShow"/>
                </asp:HyperLink>
                    <%--This is basically a "user" help idea--%>
                    <h6 class="text-center">See a room you like? Go ahead and click on the image and we will take you to that room!</h6>
                    </div>
                <div class="col-sm-4">
                    <h3 class="text-left">This is The Right Place for your Business Meetings, Presentations, or Events!</h3>
                    <br />
                    <br />
                    <h4>Our auditorium fits up to 1000 people and can be arranged for your event!</h4>
                    <h5>Community Hall meetings for public discussions</h5>
                    <h5>Ideal for live entertainment and perfomances</h5>
                    <br />
                    <asp:LinkButton ID="lbAuditorium"  runat="server" Text="Check out our Auditorium here!" OnClick="lbAuditorium_Click" CssClass="lbAuditorium"></asp:LinkButton>
                    <br />
                    <h4>Looking for something smaller, but enough to accomodate 200 people?</h4>
                    <h5>Check out our business style room for small event's and presentations</h5>
                    <h5>Even ideal for an art show or small presentations</h5>
                    <br />
                    <asp:LinkButton ID="lb200person" runat="server" Text="Check out our 200 person rooms here!" OnClick="lb200person_Click" CssClass="lb200"></asp:LinkButton>
                    <br />
                    <h4>Check out our conference rooms just for you!</h4>
                    <h5>Need something for a small event or business conferences?</h5>
                    <h5>Check out our 50 person room!</h5>
                    <br />
                    <asp:LinkButton ID="lb50person" runat="server" Text="Check out our 50 person rooms here!" OnClick="lb50person_Click" CssClass="lb50"></asp:LinkButton>
                    <br />
                    <h4>Looking for a more personal setting?</h4>
                    <h5>Ideal for family or even small business conferences!</h5>
                    <br />
                    <asp:LinkButton ID="lb15person" runat="server" Text="Check out our 15 person rooms here!" OnClick="lb15person_Click" CssClass="lb15"></asp:LinkButton>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</asp:Content>



