<%@ Page Title="" Language="C#" MasterPageFile="~/Jobseeker/JobseekerMasterPage.master" AutoEventWireup="true" CodeFile="SearchByCountry.aspx.cs" Inherits="Jobseeker_SearchByCountry" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 304px;
        }
        .style2
        {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td class="style2">
                Select Country:</td>
            <td class="style1">
                <asp:DropDownList ID="drpcountry" runat="server">
                    <asp:ListItem>--Select Country--</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:Label ID="lblcountry" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style1">
                <asp:Button ID="btnsearch" runat="server" onclick="btnsearch_Click" 
                    Text="Search" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:GridView ID="GridView1" runat="server">
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

