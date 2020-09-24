<%@ Page Title="" Language="C#" MasterPageFile="~/Jobseeker/JobseekerMasterPage.master" AutoEventWireup="true" CodeFile="UpdateResume.aspx.cs" Inherits="Jobseeker_UpdateResume" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 25px;
        }
        .style2
        {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td colspan="3">
            <h3>Update Resume</h3>
                <asp:Image ID="Image1" runat="server" Height="274px" 
                    ImageUrl="~/NewImages/opportunity.jpg" Width="458px" />
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Label ID="lblMsg" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="3" class="style2">
                <h3>
                    Resume Details</h3>
            </td>
        </tr>
        
        <tr>
            <td>
                Category :</td>
            <td>
                <asp:DropDownList ID="drpcategory" runat="server" Height="27px" Width="124px">
                    <asp:ListItem>Select Category</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:Label ID="lblCategory" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style5">
                Education Degree :</td>
            <td class="style5">
                <asp:DropDownList ID="drpdegree" runat="server" Height="27px" Width="124px" 
                    >
                    <asp:ListItem>Select Degree</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style5">
                <asp:Label ID="lblEdu" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                Current Salary :</td>
            <td>
                <asp:TextBox ID="txtcurrentsal" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtcurrentsal" 
                    ErrorMessage="Current Salary should not be blank." SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Expected Salary :</td>
            <td>
                <asp:TextBox ID="txtexpectsal" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtexpectsal" 
                    ErrorMessage="Expected Salary should not be blank." SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Experience :</td>
            <td>
                <asp:TextBox ID="txtexperience" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtexperience" ErrorMessage="Experience should not be blank." 
                    SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="btnupdate" runat="server" onclick="btnupdate_Click" 
                    Text="Update" Height="26px" Width="69px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

