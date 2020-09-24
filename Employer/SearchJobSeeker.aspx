<%@ Page Title="" Language="C#" MasterPageFile="~/Employer/EmployerMasterPage.master" AutoEventWireup="true" CodeFile="SearchJobSeeker.aspx.cs" Inherits="Employer_SearchJobSeeker" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <br />
    <asp:Image ID="Image1" runat="server" ImageUrl="~/NewImages/findjob.jpg" 
        Width="347px" />
    <br />
    <br />
    <table class="style1">
        <tr>&nbsp;</tr>
        <tr>
            <td>
                Select Category :</td>
            <td>
                <asp:DropDownList ID="drpcategory" runat="server">
                </asp:DropDownList>
            </td>
            <td>
                <asp:Label ID="lblCategory" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="btnsearch" runat="server" onclick="btnsearch_Click" 
                    Text="Search" Height="26px" Width="91px" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="4">
                <br />
                <br />
                <asp:GridView ID="GridView1" runat="server">
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

