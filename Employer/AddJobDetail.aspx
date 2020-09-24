<%@ Page Title="" Language="C#" MasterPageFile="~/Employer/EmployerMasterPage.master" AutoEventWireup="true" CodeFile="AddJobDetail.aspx.cs" Inherits="Employer_AddJobDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td colspan="3">
                <h3>
                    Add New Job Details here </h3>
                        </td>
                    </tr>
        <tr>
            <td colspan="3">
                &nbsp;<asp:Label ID="Labmsg" runat="server"></asp:Label>
                &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            Job Title :</td>
            <td>
                <asp:TextBox ID="txtjobtitle" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtjobtitle" ErrorMessage="Job Title should not be blank." 
                    SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
        </tr>
        <tr>
            <td>
                Job Description :</td>
            <td>
                <asp:TextBox ID="txtjobdescription" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtjobdescription" ErrorMessage="Job Desc should not be blank." 
                    SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Qualification Required :</td>
            <td>
                <asp:DropDownList ID="drpqualification" runat="server">
                </asp:DropDownList>
            </td>
            <td>
                <asp:Label ID="lblEdu" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                Experience Required :</td>
            <td>
                <asp:TextBox ID="txtexperience" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtexperience" 
                    ErrorMessage="Experience field should not be blank." SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">
                Salary Offered :</td>
            <td class="style1">
                <asp:TextBox ID="txtsalaryoffer" runat="server"></asp:TextBox>
            </td>
            <td class="style1">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtsalaryoffer" ErrorMessage="Salary field should not be blank." 
                    SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="btnadd" runat="server" onclick="btnadd_Click" Text="Add" 
                    Height="27px" Width="72px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

