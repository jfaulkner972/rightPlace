<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="~/2.1-ViewReservation.aspx.cs" inherits="The_Right_Place._2__1_ViewReservation" MasterPageFile="~/TRP.Master" %>

<%@ MasterType VirtualPath="~/TRP.Master" %>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Enter Reservation Number "></asp:Label>
    <asp:TextBox ID="customerReservationNumber" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Search" OnClick="test_Click" />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server"></asp:GridView>
</asp:Content>
