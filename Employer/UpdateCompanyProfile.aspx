<%@ Page Title="" Language="C#" MasterPageFile="~/Employer/EmployerMasterPage.master" AutoEventWireup="true" CodeFile="UpdateCompanyProfile.aspx.cs" Inherits="Employer_UpdateCompanyProfile" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td colspan="3">
                <asp:Image ID="Image1" runat="server" Height="274px" 
                    ImageUrl="~/NewImages/company (1).gif" Width="483px" />
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <h3>
                    Company Details</h3>
            </td>
        </tr>
        <tr>
            <td>
                Company Name :</td>
            <td>
                <asp:TextBox ID="txtcompanyname" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtcompanyname" ErrorMessage="Company name should not be blank." 
                    SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
        </tr>
        <tr>
            <td>
                Address :</td>
            <td>
                <asp:TextBox ID="txtaddress" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtaddress" ErrorMessage="Address should not be blank." 
                    SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
        </tr>
        <tr>
            <td>
                Contact Number :</td>
            <td>
                <asp:TextBox ID="txtcontactnum" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtcontactnum" ErrorMessage="Contact Num should not be blank." 
                    SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
        </tr>
        <tr>
            <td>
                Company Email Id :</td>
            <td>
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtemail" ErrorMessage="Enter valid email Id." 
                    SetFocusOnError="True" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtemail" 
                    ErrorMessage="Email id field should not be blank." SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="btnupdate" runat="server" onclick="btnupdate_Click" 
                    Text="Update" Height="27px" Width="80px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

