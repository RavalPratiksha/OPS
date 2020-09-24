<%@ Page Title="" Language="C#" MasterPageFile="~/OuterMasterPage.master" AutoEventWireup="true" CodeFile="EmployerRegister.aspx.cs" Inherits="EmployerRegister" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 128px;
        }
        
        textbox
{
	line-height: 20px;
	vertical-align: 170px;
}	
        
        .style2
        {
            width: 128px;
            height: 25px;
        }
        .style3
        {
            height: 25px;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td colspan="3">
                <h3>
                                                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                                                    </asp:ScriptManager>
                                                </h3>
                <p>
                                                   <h3> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lblhead" runat="server" Text="Employer Registration Form"></asp:Label></h3>
                                                    <h3>&nbsp;</h3>
                <h3 style="border-style: groove; border-color: #CC6600">Create your Account</h3>
            </td>
        </tr>
        <tr>
            <td class="style1">
                Enter UserName :</td>
            <td>
                <asp:TextBox ID="txtusername" runat="server" AutoPostBack="True" Height="20px" Width="170px" 
                   ></asp:TextBox>
                <asp:Label ID="lblCheck" runat="server"></asp:Label>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtusername" ErrorMessage="UserName should not be blank." 
                    SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
        </tr>
        <tr>
            <td class="style1">
                Password :</td>
            <td>
                <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" Height="21px" 
                    Width="170px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtpassword" ErrorMessage="Password should not be blank." 
                    SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">
                Confirm Password :</td>
            <td>
                <asp:TextBox ID="txtconformpw" runat="server" TextMode="Password" Height="21px" 
                    Width="168px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtconformpw" 
                    ErrorMessage="Confirm Password should not be blank." SetFocusOnError="True"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txtpassword" ControlToValidate="txtconformpw" 
                    ErrorMessage="Please enter correct Password." SetFocusOnError="True"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <h3 style="border-style: groove; border-color: #CC6600">
                    Contact Details</h3>
            </td>
        </tr>
        <tr>
            <td class="style1">
                Enter Firstname :<br />
                Enter LastName:</td>
            <td>
                <asp:TextBox ID="txtfname" runat="server" Height="20px" Width="170px"></asp:TextBox>
                &nbsp;&nbsp; &nbsp;&nbsp;
                <asp:TextBox ID="txtlname" runat="server" Height="20px" Width="170px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Birth Date :</td>
            <td class="style3">
                <asp:TextBox ID="txtbirthdate" runat="server" Height="20px" Width="170px"></asp:TextBox>
            </td>
            <td class="style3">
                </td>
        </tr>
        <tr>
            <td class="style1">
                Gender :</td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                    RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True">Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="RadioButtonList1" 
                    ErrorMessage="Please select any one Gender." SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">
                Contact Number :</td>
            <td>
                <asp:TextBox ID="txtcontactnum" runat="server" Width="170px" Height="20px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtcontactnum" ErrorMessage="Contact Num. should not be blank." 
                    SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">
                Resident Address :</td>
            <td>
                <asp:TextBox ID="txtaddress" runat="server" TextMode="MultiLine" Height="34px" 
                    Width="171px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtaddress" ErrorMessage="Address should not be blank." 
                    SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">
                Employer Email Address :</td>
            <td>
                <asp:TextBox ID="txtmail" runat="server" Height="20px" Width="170px"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtmail" ErrorMessage="Please enter correct Email add." 
                    SetFocusOnError="True" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                    ControlToValidate="txtmail" ErrorMessage="Email add should not be blank." 
                    SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">
                Country :</td>
            <td>
                <asp:DropDownList ID="drpcountry" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="drpcountry_SelectedIndexChanged">
                    <asp:ListItem>Select Country</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:Label ID="lblCountry" runat="server"></asp:Label>
                        </td>
        </tr>
        <tr>
            <td class="style1">
                State :</td>
            <td>
                <asp:DropDownList ID="drpstate" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="drpstate_SelectedIndexChanged">
                    <asp:ListItem>Select State</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:Label ID="lblState" runat="server"></asp:Label>
                        </td>
        </tr>
        <tr>
            <td class="style1">
                City :</td>
            <td>
                <asp:DropDownList ID="drpcity" runat="server" 
                    onselectedindexchanged="drpcity_SelectedIndexChanged">
                    <asp:ListItem>Select City</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:Label ID="lblCity" runat="server"></asp:Label>
                        </td>
        </tr>
        <tr>
            <td class="style1">
                Nationality :</td>
            <td>
                <asp:TextBox ID="txtnationality" runat="server" Height="20px" Width="169px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <h3 style="border-style: groove; border-color: #CC6600">
                    Company Details</h3>
            </td>
        </tr>
        <tr style="border-style: groove; border-color: #33CC33">
            <td class="style1">
                Company Name :</td>
            <td>
                <asp:TextBox ID="txtcompname" runat="server" Height="19px" Width="168px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txtcompname" ErrorMessage="Company Name should not be blank." 
                    SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">
                Address :</td>
            <td>
                <asp:TextBox ID="txtcompaddress" runat="server" TextMode="MultiLine" 
                    Height="39px" Width="167px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="txtcompaddress" ErrorMessage="Address should not be blank." 
                    SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">
                Contact Number :</td>
            <td>
                <asp:TextBox ID="txtcompcontactnum" runat="server" Height="20px" Width="170px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="txtcompcontactnum" ErrorMessage="Contact Num. should not be blank." 
                    SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">
                Company Email Id :</td>
            <td>
                <asp:TextBox ID="txtcompmail" runat="server" Height="20px" Width="170px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtcompmail" ErrorMessage="Please enter valid email Id." 
                    SetFocusOnError="True" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="txtcompmail" ErrorMessage="Email Id should not be blank." 
                    SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                <asp:Button ID="btnsubmit" runat="server" onclick="btnsubmit_Click" 
                    Text="Submit" Height="26px" Width="65px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnclera" runat="server" Text="Clear" Height="26px" 
                    Width="75px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>


