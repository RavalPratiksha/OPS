<%@ Page Title="" Language="C#" MasterPageFile="~/JobSeeker/JobseekerMasterPage.master" AutoEventWireup="true" CodeFile="SearchByCity.aspx.cs" Inherits="JobSeeker_SearchByCity" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td>
                Select City:</td>
            <td>
                <asp:DropDownList ID="drpcity" runat="server">
                    <asp:ListItem>Select City</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:Label ID="lblcity" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="btnsearch" runat="server" onclick="btnsearch_Click" 
                    Text="Search" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
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

