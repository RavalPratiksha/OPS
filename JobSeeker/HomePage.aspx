<%@ Page Title="" Language="C#" MasterPageFile="~/Jobseeker/JobseekerMasterPage.master" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="Jobseeker_HomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        Welcome
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Image ID="Image1" runat="server" Height="347px" 
            ImageUrl="~/NewImages/shake hand.jpg" Width="455px" />
    </p>
</asp:Content>

