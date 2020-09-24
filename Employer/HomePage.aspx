<%@ Page Title="" Language="C#" MasterPageFile="~/Employer/EmployerMasterPage.master" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="Employer_HomePage" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        Welcome
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="btnlogemp" runat="server" PostBackUrl="~/LoginPage.aspx" >Login</asp:LinkButton>
    </p>
<p>
        &nbsp;</p>
<p>
        <asp:Image ID="Image1" runat="server" Height="213px" 
            ImageUrl="~/NewImages/employer.jpg" Width="491px" />
    </p>
</asp:Content>