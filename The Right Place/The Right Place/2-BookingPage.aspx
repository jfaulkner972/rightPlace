<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="2-BookingPage.aspx.cs" Inherits="The_Right_Place.Page2" MasterPageFile="~/TRP.Master" %>

<%@ MasterType VirtualPath="~/TRP.Master" %>
<asp:Content ContentPlaceHolderID="headPlaceHolder" runat="server"></asp:Content>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <link href="2BookingPage.css" rel="stylesheet" />
    <%--need to figure out how to center block all--%>
    <div class="col-sm-12">
        <table>
                <tr>
                    <td>
                        <h4>
                            <asp:Label ID="RoomSelection" runat="server" Text="Room Selection"></asp:Label>
                        </h4>
                    </td>
                    <td>
                        <asp:DropDownList ID="BookingDDL" runat="server" AutoPostBack="true" OnSelectedIndexChanged="BookingDDL_SelectedIndexChanged" Height="25px" Width="400px">
                            <asp:ListItem>Please Select a Room</asp:ListItem>
                            <asp:ListItem>15 Person Room</asp:ListItem>
                            <asp:ListItem>50 Person Room</asp:ListItem>
                            <asp:ListItem>200 Person Room</asp:ListItem>
                            <asp:ListItem>1000 Person Room</asp:ListItem>
                            <asp:ListItem>Ballroom</asp:ListItem>
                            <asp:ListItem>Courtyard</asp:ListItem>
                            <asp:ListItem>Small Room</asp:ListItem>
                        </asp:DropDownList>

                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="BookingDDLrfv" runat="server" ErrorMessage="Please Select a Room"
                            InitialValue="Please Select a Room" ControlToValidate="BookingDDL" ForeColor="Red">
                        </asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <h4>
                            <asp:Label ID="Price" runat="server" Text="Price Per Day:"></asp:Label>
                        </h4>
                    </td>
                    <td>
                        <h5>
                            <asp:Label ID="DailyPrice" runat="server" Text=""></asp:Label>
                        </h5>
                    </td>
                </tr>
                <tr>
                    <td>
                        <h4>
                            <asp:Label ID="StartDatelbl" runat="server" Text="Check In Date"></asp:Label>
                        </h4>
                    </td>
                    <td>
                        <asp:TextBox ID="startDateTxt" runat="server" Width="400px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="startDaterfv" runat="server" ErrorMessage="Please enter a check in date"
                            ControlToValidate="startDateTxt" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:CompareValidator ID="startDatecv" runat="server" Text="Must be a valid date" CssClass="text-danger"
                            Display="Dynamic" ControlToValidate="startDateTxt" Type="Date" Operator="DataTypeCheck" ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <h4>
                            <asp:Label ID="EndDatelbl" runat="server" Text="Check Out Date"></asp:Label>
                        </h4>
                    </td>
                    <td>
                        <asp:TextBox ID="endDateTxt" runat="server" Width="400px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="endDaterfv" runat="server" ErrorMessage="Please enter a check out date"
                            ControlToValidate="endDateTxt" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:CompareValidator ID="endDatecv" runat="server" Text="Must be on or after Check In date" CssClass="text-danger"
                            Display="Dynamic" ControlToValidate="endDateTxt" Type="Date" Operator="GreaterThanEqual" ForeColor="Red" ControlToCompare="startDateTxt"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <h4>
                            <asp:Label ID="ReservationNamelbl" runat="server" Text="Reservation Name"></asp:Label>
                        </h4>
                    </td>
                    <td>
                        <asp:TextBox ID="reservationTxt" runat="server" Width="400px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="reservationrfv" runat="server" ErrorMessage="Enter a name for your Reservation" ForeColor="Red"
                            ControlToValidate="reservationTxt">
                        </asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <h4>
                            <asp:Label ID="fNameLbl" runat="server" Text="First Name"></asp:Label>
                        </h4>
                    </td>
                    <td>
                        <asp:TextBox ID="fNameTxt" runat="server" Width="400px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="fNamerfv" runat="server" ErrorMessage="Enter your First Name" ForeColor="Red"
                            ControlToValidate="fNameTxt">
                        </asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <h4>
                            <asp:Label ID="lNamelbl" runat="server" Text="Last Name"></asp:Label>
                        </h4>
                    </td>
                    <td>
                        <asp:TextBox ID="lNameTxt" runat="server" Width="400px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="lNamerfv" runat="server" ErrorMessage="Enter your last name" ForeColor="Red"
                            ControlToValidate="lNameTxt">
                        </asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <h4>
                            <asp:Label ID="addresslbl" runat="server" Text="Address"></asp:Label>
                        </h4>
                    </td>
                    <td>
                        <asp:TextBox ID="addressTxt" runat="server" Width="400px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="addressrfv" runat="server" ErrorMessage="Enter your address" ForeColor="Red"
                            ControlToValidate="addressTxt">
                        </asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <h4>
                            <asp:Label ID="citylbl" runat="server" Text="City"></asp:Label>
                        </h4>
                    </td>
                    <td>
                        <asp:TextBox ID="cityTxt" runat="server" Width="400px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="cityrfv" runat="server" ErrorMessage="Enter your city" ForeColor="Red"
                            ControlToValidate="cityTxt">
                        </asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <h4>
                            <asp:Label ID="State" runat="server" Text="State"></asp:Label>
                        </h4>
                    </td>
                    <td>
                        <asp:DropDownList ID="StateDDL" runat="server" Height="18px" Width="400px">
                            <asp:ListItem>Please Select your State</asp:ListItem>
                            <asp:ListItem Value="AL">Alabama</asp:ListItem>
                            <asp:ListItem Value="AK">Alaska</asp:ListItem>
                            <asp:ListItem Value="AZ">Arizona</asp:ListItem>
                            <asp:ListItem Value="AR">Arkansas</asp:ListItem>
                            <asp:ListItem Value="CA">California</asp:ListItem>
                            <asp:ListItem Value="CO">Colorado</asp:ListItem>
                            <asp:ListItem Value="CT">Connecticut</asp:ListItem>
                            <asp:ListItem Value="DC">District of Columbia</asp:ListItem>
                            <asp:ListItem Value="DE">Delaware</asp:ListItem>
                            <asp:ListItem Value="FL">Florida</asp:ListItem>
                            <asp:ListItem Value="GA">Georgia</asp:ListItem>
                            <asp:ListItem Value="HI">Hawaii</asp:ListItem>
                            <asp:ListItem Value="ID">Idaho</asp:ListItem>
                            <asp:ListItem Value="IL">Illinois</asp:ListItem>
                            <asp:ListItem Value="IN">Indiana</asp:ListItem>
                            <asp:ListItem Value="IA">Iowa</asp:ListItem>
                            <asp:ListItem Value="KS">Kansas</asp:ListItem>
                            <asp:ListItem Value="KY">Kentucky</asp:ListItem>
                            <asp:ListItem Value="LA">Louisiana</asp:ListItem>
                            <asp:ListItem Value="ME">Maine</asp:ListItem>
                            <asp:ListItem Value="MD">Maryland</asp:ListItem>
                            <asp:ListItem Value="MA">Massachusetts</asp:ListItem>
                            <asp:ListItem Value="MI">Michigan</asp:ListItem>
                            <asp:ListItem Value="MN">Minnesota</asp:ListItem>
                            <asp:ListItem Value="MS">Mississippi</asp:ListItem>
                            <asp:ListItem Value="MO">Missouri</asp:ListItem>
                            <asp:ListItem Value="MT">Montana</asp:ListItem>
                            <asp:ListItem Value="NE">Nebraska</asp:ListItem>
                            <asp:ListItem Value="NV">Nevada</asp:ListItem>
                            <asp:ListItem Value="NH">New Hampshire</asp:ListItem>
                            <asp:ListItem Value="NJ">New Jersey</asp:ListItem>
                            <asp:ListItem Value="NM">New Mexico</asp:ListItem>
                            <asp:ListItem Value="NY">New York</asp:ListItem>
                            <asp:ListItem Value="NC">North Carolina</asp:ListItem>
                            <asp:ListItem Value="ND">North Dakota</asp:ListItem>
                            <asp:ListItem Value="OH">Ohio</asp:ListItem>
                            <asp:ListItem Value="OK">Oklahoma</asp:ListItem>
                            <asp:ListItem Value="OR">Oregon</asp:ListItem>
                            <asp:ListItem Value="PA">Pennsylvania</asp:ListItem>
                            <asp:ListItem Value="RI">Rhode Island</asp:ListItem>
                            <asp:ListItem Value="SC">South Carolina</asp:ListItem>
                            <asp:ListItem Value="SD">South Dakota</asp:ListItem>
                            <asp:ListItem Value="TN">Tennessee</asp:ListItem>
                            <asp:ListItem Value="TX">Texas</asp:ListItem>
                            <asp:ListItem Value="UT">Utah</asp:ListItem>
                            <asp:ListItem Value="VT">Vermont</asp:ListItem>
                            <asp:ListItem Value="VA">Virginia</asp:ListItem>
                            <asp:ListItem Value="WA">Washington</asp:ListItem>
                            <asp:ListItem Value="WV">West Virginia</asp:ListItem>
                            <asp:ListItem Value="WI">Wisconsin</asp:ListItem>
                            <asp:ListItem Value="WY">Wyoming</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="StateDDLrfv" runat="server" ErrorMessage="Please Select your State"
                            InitialValue="Please Select your State" ControlToValidate="StateDDL" ForeColor="Red">
                        </asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <h4>
                            <asp:Label ID="ziplbl" runat="server" Text="Zip Code"></asp:Label>
                        </h4>
                    </td>
                    <td>
                        <asp:TextBox ID="zipTxt" runat="server" Width="400px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="ziprfv" runat="server" ErrorMessage="Please enter your Zip Code"
                            ControlToValidate="zipTxt" ForeColor="Red">
                        </asp:RequiredFieldValidator><br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Zip Code must be five digits" ValidationExpression="\d{5}" ControlToValidate="zipTxt" ForeColor="Red"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <h4>
                            <asp:Label ID="phonelbl" runat="server" Text="Phone"></asp:Label>
                        </h4>
                    </td>
                    <td>
                        <asp:TextBox ID="phoneTxt" runat="server" Width="400px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="phonerfv" runat="server"
                            ControlToValidate="phoneTxt" Text="Please enter your phone number" CssClass="text-danger" Display="Dynamic" ForeColor="Red">
                        </asp:RequiredFieldValidator><br />
                        <asp:RegularExpressionValidator ID="phonerev" runat="server"
                            ControlToValidate="phoneTxt" Text="Please enter in this format: 999-999-9999"
                            Display="Dynamic" CssClass="text-danger"
                            ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" ForeColor="Red"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <h4>
                            <asp:Label ID="emaillbl" runat="server" Text="Email Address"></asp:Label>
                        </h4>
                    </td>

                    <td>
                        <asp:TextBox ID="emailTxt" runat="server" Width="400px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="emailrfv" runat="server"
                            ControlToValidate="emailTxt" Text="Please enter your email" CssClass="text-danger" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator><br />
                        <asp:RegularExpressionValidator ID="emailrev" runat="server"
                            ControlToValidate="emailTxt" Text="Must be valid email address"
                            Display="Dynamic" CssClass="text-danger"
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
                    </td>
                </tr>
        </table>
        <div class="form-group">
            <div class="col-sm-12">
                <asp:Button ID="submitReservationButton" runat="server" Text="Submit" OnClick="submitReservationButton_Click" CssClass="center-block" />
            </div>
        </div>
    </div>
</asp:Content>



