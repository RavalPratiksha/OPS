<%@ Page Title="" Language="C#" MasterPageFile="~/OuterMasterPage.master" AutoEventWireup="true" CodeFile="ForgetPassword.aspx.cs" Inherits="ForgetPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td colspan="3">
                <asp:Label ID="lblmessage" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                Enter Your Email Address:</td>
            <td>
                <asp:TextBox ID="txtemail" runat="server" Height="20px" Width="184px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="btnsubmit" runat="server" onclick="btnsubmit_Click" 
                    Text="Submit" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
