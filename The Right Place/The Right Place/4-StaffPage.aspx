<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="4-StaffPage.aspx.cs" Inherits="The_Right_Place._4StaffPage" MasterPageFile="~/TRP.Master" %>

<%@ MasterType VirtualPath="~/TRP.Master" %>
<asp:Content ContentPlaceHolderID="headPlaceHolder" runat="server"></asp:Content>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <link href="4StaffPage.css" rel="stylesheet" />
    <div class="form-group">
        <div class="col-sm-6" id="pic1">
            <!--Will need to put picture in this heading place-->
            <h2 class="text-right">Meeting Coordinator</h2>
            <!--Insert Picture here-->
            <div class="portrait">
                <img id="imgGary" class="pull-right" src="Images/Gary%20Rogue.jpg"/>
            </div>
        </div>
        <div class="col-sm-6">
            <!--This will need to be some type or list or a simple description of the background-->
            <!--Maybe Change this to description?-->
            <h2 class="text-left">Gary's Background</h2>
            <h4>Event Planner for Clients</h4>
            <h4>Services Planner</h4>
            <h4>Meeting the Clients requirements</h4>
            <h2>Contact Information</h2>
            <h5>Name: Gary Rogue </h5>
            <!--Make up Phone numbers for all-->
            <h5>Phone: 405-923-9087 </h5>
            <!--Email will be put in this standard (last.First@trp.com)-->
            <h5>Email: <a href="mailto:Rogue.Gary@trp.com?subject=Put%20subject%20desired%20content">Rogue.Gary@trp.com </a></h5>
        </div>
    </div>
    <div class="form-vertical">
        <div class="col-sm-6" id="pic2">
            <!--Will need to put picture in this heading place-->
            <h2 class="text-right">Small Event Coordinator</h2>
            <div class="portrait">
                <img id="imgMika" class="pull-right" src="Images/Mika%20Myers.jpg"/>
            </div>
        </div>
        <div class="col-sm-6">
            <!--This will need to be some type or list or a simple description of the background-->
            <h2 class="text-left">Mika's Background</h2>
            <h4>Plans small events</h4>
            <h4>Ideal for small events</h4>
            <h4>Small Business meetings</h4>

            <h2>Contact Information</h2>
            <h5>Name: Mika Myers</h5>
            <h5>Phone: 405-902-1939 </h5>
            <h5>Email: <a href="mailto:Myers.Mika@trp.com?subject=Put%20subject%20desired%20content">Myers.Mika@trp.com </a></h5>
        </div>
    </div>
    <div class="form-vertical">
        <div class="col-sm-6" id="pic3">
            <!--Will need to put picture in this heading place-->
            <h2 class="text-right">Large Event Coordinator</h2>
            <div class="portrait">
                <img id="imgPaul" class="pull-right" src="Images/Paul%20Sikes.jpg"/>
            </div>
        </div>
        <div class="col-sm-6">
            <!--This will need to be some type or list or a simple description of the background-->
            <h2 class="text-left">Paul's Background</h2>
                <h4>Medium/Large Event planner</h4>
                <h4>Ideal for larger events</h4>
                <h4>Business conferences/events</h4>
                            <h2>Contact Information</h2>
            <h5>Name: Paul Sikes </h5>
            <h5>Phone: 405-384-8585 </h5>
            <h5>Email: <a href="mailto:Sikes.Paul@trp.com?subject=Put%20subject%20desired%20content">Sikes.Paul@trp.com </a></h5>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-6" id="pic4">
            <!--Will need to put picture in this heading place-->
            <h2 class="text-right">Wedding Coordinator</h2>
            <div class="portrait">
                <img id="imgFelicia" class="pull-right" src="Images/Felicia%20Stokes.jpg"/>
            </div>
        </div>
        <div class="col-sm-6">
            <!--This will need to be some type or list or a simple description of the background-->
            <h2 class="text-left">Felicia's Background</h2>

                <h4>Plans weddings based on clients requirements and specifications</h4>
                <h4>Ensures that every goes smoothly and as planned</h4>
                <h4>Coordinates with the Caterer(s)</h4>

            <h2>Contact Information</h2>
            <h5>Name: Felicia Stokes </h5>
            <h5>Phone: 405-837-8364 </h5>
            <h5>Email: <a href="mailto:Stokes.Felicia@trp.com?subject=Put%20subject%20desired%20content">Stokes.Felicia@trp.com</a></h5>
        </div>
    </div>
    <div class="form-vertical">
        <div class="col-sm-6" id="pic5">
            <!--Will need to put picture in this heading place-->
            <h2 class="text-right">Caterer Coordinator</h2>
            <div class="portrait">
                <img id="imgCade" class="pull-right" src="Images/Cade%20Wilson.jpg"/>
            </div>
        </div>
        <div class="col-sm-6">
            <!--This will need to be some type or list or a simple description of the background-->
            <h2 class="text-left">Cade's Background</h2>
                <h4>Prepares food based on client specifications</h4>
                <h4>Oversees food production</h4>
                <h4>Ensures the client is satisfied</h4>
            <h2>Contact Information</h2>
            <h5>Name: Cade Wilson</h5>
            <h5>Phone: 405-273-3645 </h5>
            <h5>Email: <a href="mailto:Wilson.Cade@trp.com?subject=Put%20subject%20desired%20content">Wilson.Cade@trp.com </a></h5>
        </div>
        <!--Will need to go back through and add the menu redirection for the catering?-->
        <!--will we want to do a seperate redirected page for a menu or figure out a website that caters?-->

    </div>

</asp:Content>


