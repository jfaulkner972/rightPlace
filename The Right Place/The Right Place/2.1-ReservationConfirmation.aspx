<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="2.1-ReservationConfirmation.aspx.cs" Inherits="The_Right_Place._2__1_ReservationConfirmation" MasterPageFile="~/TRP.Master" %>

<%@ MasterType VirtualPath="~/TRP.Master" %>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <link href="2BookingPage.css" rel="stylesheet" />
    <div class="col-sm-12 center-block">
        <h1 class="text-center">Confirm Your Reservation!</h1>
        <table>
            <tr>
                <td class="auto-style2">
                    <h4>
                        <asp:Label ID="RoomSelection" runat="server" Text="Room Selected"></asp:Label>
                    </h4>
                </td>
                <td class="auto-style1">
                    <asp:Label ID="SelectedRoom" runat="server" Font-Size="16px" Font-Bold="true">
                        
                    </asp:Label>

                </td>

            </tr>
            <tr>
                <td class="auto-style2">
                    <h4>
                        <asp:Label ID="Price" runat="server" Text="Price Per Day:"></asp:Label>
                    </h4>
                </td>
                <td class="auto-style1">
                    <asp:Label ID="DailyPrice" runat="server" Text="" Font-Size="16px" Font-Bold="true"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <h4>
                        <asp:Label ID="StartDatelbl" runat="server" Text="Check In Date"></asp:Label>
                    </h4>
                </td>
                <td class="auto-style1">
                    <asp:Label ID="startDateTxt" runat="server" Font-Size="16px" Font-Bold="true"></asp:Label>
                </td>

            </tr>
            <tr>
                <td class="auto-style2">
                    <h4>
                        <asp:Label ID="EndDatelbl" runat="server" Text="Check Out Date"></asp:Label>
                    </h4>
                </td>
                <td class="auto-style1">
                    <asp:Label ID="endDateTxt" runat="server" Font-Size="16px" Font-Bold="true"></asp:Label>
                </td>

            </tr>
            <tr>
                <td class="auto-style2">
                    <h4>
                        <asp:Label ID="ReservationNamelbl" runat="server" Text="Reservation Name"></asp:Label>
                    </h4>
                </td>
                <td class="auto-style1">
                    <asp:Label ID="reservationTxt" runat="server" Font-Size="16px" Font-Bold="true"></asp:Label>
                </td>

            </tr>
            <tr>
                <td class="auto-style2">
                    <h4>
                        <asp:Label ID="fNameLbl" runat="server" Text="First Name"></asp:Label>
                    </h4>
                </td>
                <td class="auto-style1">
                    <asp:Label ID="fNameTxt" runat="server" Font-Size="16px" Font-Bold="true"></asp:Label>
                </td>

            </tr>
            <tr>
                <td class="auto-style2">
                    <h4>
                        <asp:Label ID="lNamelbl" runat="server" Text="Last Name"></asp:Label>
                    </h4>
                </td>
                <td class="auto-style1">
                    <asp:Label ID="lNameTxt" runat="server" Font-Size="16px" Font-Bold="true"></asp:Label>
                </td>

            </tr>
            <tr>
                <td class="auto-style2">
                    <h4>
                        <asp:Label ID="addresslbl" runat="server" Text="Address"></asp:Label>
                    </h4>
                </td>
                <td class="auto-style1">
                    <asp:Label ID="addressTxt" runat="server" Font-Size="16px" Font-Bold="true"></asp:Label>
                </td>

            </tr>
            <tr>
                <td class="auto-style2">
                    <h4>
                        <asp:Label ID="citylbl" runat="server" Text="City"></asp:Label>
                    </h4>
                </td>
                <td class="auto-style1">
                    <asp:Label ID="cityTxt" runat="server" Font-Size="16px" Font-Bold="true"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <h4>
                        <asp:Label ID="State" runat="server" Text="State"></asp:Label>
                    </h4>
                </td>
                <td class="auto-style1">
                    <asp:Label ID="stateChoice" runat="server" Text="" Font-Size="16px" Font-Bold="true"></asp:Label>
                </td>

            </tr>
            <tr>
                <td class="auto-style2">
                    <h4>
                        <asp:Label ID="ziplbl" runat="server" Text="Zip Code"></asp:Label>
                    </h4>
                </td>
                <td class="auto-style1">
                    <asp:Label ID="zipTxt" runat="server" Font-Size="16px" Font-Bold="true"></asp:Label>
                </td>

            </tr>
            <tr>
                <td class="auto-style2">
                    <h4>
                        <asp:Label ID="phonelbl" runat="server" Text="Phone"></asp:Label>
                    </h4>
                </td>
                <td class="auto-style1">
                    <asp:Label ID="phoneTxt" runat="server" Font-Size="16px" Font-Bold="true"></asp:Label>
                </td>

            </tr>
            <tr>
                <td class="auto-style2">
                    <h4>
                        <asp:Label ID="emaillbl" runat="server" Text="Email Address"></asp:Label>
                    </h4>
                </td>
                <td class="auto-style1">
                    <asp:Label ID="emailTxt" runat="server" Font-Size="16px" Font-Bold="true"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <h4>
                        <asp:Label ID="FinalPrice" runat="server" Text="Total Due"></asp:Label>
                    </h4>
                </td>
                <td class="auto-style1">
                    <asp:Label ID="FinalPriceAmount" runat="server" Text="" Font-Size="16px" Font-Bold="true"></asp:Label>
                </td>
            </tr>
        </table>
        <div class="form-group">
            <div class="col-sm-12 center-block">
                <asp:Button ID="submitConfirmationButton" runat="server" Text="Confirm Reservation" OnClick="submitConfirmationButton_Click" CssClass="center-block" />
            </div>

        </div>
    </div>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="headPlaceHolder">
    <style type="text/css">
        .auto-style1 {
            width: 138px;
        }
        .auto-style2 {
            width: 246px;
        }
    </style>
</asp:Content>

