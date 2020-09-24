<%@ Page Title="" Language="C#" MasterPageFile="~/OuterMasterPage.master" AutoEventWireup="true" CodeFile="JobSeekerRegister.aspx.cs" Inherits="JobSeekerRegister" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 29px;
        }
        .style2
        {
            height: 19px;
        }
        .style3
        {
            height: 46px;
        }
        .style4
        {
            height: 20px;
        }
        .style5
        {
            height: 26px;
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
                <h3>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblhead" runat="server" Text="JobSeeker Registration Form"></asp:Label>
                </h3>
                
                <h3 style="border-style: groove; border-color: #33CC33">
                    Create your Account</h3>
            </td>
        </tr>
        <tr>
            <td>
                Enter UserName :</td>
            <td>
                <asp:TextBox ID="txtusername" runat="server" AutoPostBack="True" 
                    ontextchanged="txtusername_TextChanged" MaxLength="50"></asp:TextBox>
                <asp:Label ID="lblCheck" runat="server"></asp:Label>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtusername" ErrorMessage="UserName should not be blank." 
                    SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" 
                    runat="server" ControlToValidate="txtusername" 
                    ErrorMessage="Enter only String." SetFocusOnError="True" 
                    ValidationExpression="^[a-zA-Z'.\s]{1,40}$"></asp:RegularExpressionValidator>
                        </td>
        </tr>
        <tr>
            <td>
                Password :</td>
            <td>
                <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" Height="20px" 
                    Width="124px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtpassword" ErrorMessage="Password should not be blank." 
                    SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
        </tr>
        <tr>
            <td>
                Confirm Password :</td>
            <td>
                <asp:TextBox ID="txtconformpw" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txtpassword" ControlToValidate="txtconformpw" 
                    ErrorMessage="Please type the correct Password." SetFocusOnError="True"></asp:CompareValidator>
                        </td>
        </tr>
        <tr>
            <td colspan="3">
                <h3 style="border-style: groove; border-color: #33CC33">
                    Contact Details</h3>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Enter Firstname:<br />
                Enter Lastname:<br />
                </td>
            <td class="style3">
                <asp:TextBox ID="txtfname" runat="server"></asp:TextBox>
                &nbsp;&nbsp;
                <br />
                <asp:TextBox ID="txtlname" runat="server"></asp:TextBox>
                <br />
            </td>
            <td class="style3">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    ControlToValidate="txtfname" ErrorMessage="Enter Only String." 
                    SetFocusOnError="True" ValidationExpression="^[a-zA-Z'.\s]{1,40}$"></asp:RegularExpressionValidator>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="txtfname" ErrorMessage="firstname should not be blank." 
                    SetFocusOnError="True"></asp:RequiredFieldValidator>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                    ControlToValidate="txtlname" ErrorMessage="lastname not be blank." 
                    SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        </td>
        </tr>
        <tr>
            <td class="style4">
                Birth Date :</td>
            <td class="style4">
                <asp:TextBox ID="txtbirthdate" runat="server"></asp:TextBox>
                
                </cc1:calendarextender>
            </td>
            <td class="style4">
                </td>
        </tr>
        <tr>
            <td>
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
            <td>
                Contact Number :</td>
            <td>
                <asp:TextBox ID="txtcontactnum" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtcontactnum" ErrorMessage="Enter upto 10 digit." 
                    SetFocusOnError="True" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" 
                    runat="server" ControlToValidate="txtcontactnum" 
                    ErrorMessage="please fill the contact number." SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
        </tr>
        <tr>
            <td>
                Address :</td>
            <td>
                <asp:TextBox ID="txtaddress" runat="server" TextMode="MultiLine" 
                    MaxLength="150"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtaddress" ErrorMessage="Address should not be blank." 
                    SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
        </tr>
        <tr>
            <td>
                Email Id :</td>
            <td>
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtemail" 
                    ErrorMessage="Please enter correct Email address." SetFocusOnError="True" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </td>
        </tr>
        <tr>
            <td>
                Country :</td>
            <td>
                <asp:DropDownList ID="drpcountry" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="drpcountry_SelectedIndexChanged" Height="27px" 
                    Width="126px">
                    <asp:ListItem>Select Country</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:Label ID="lblCountry" runat="server"></asp:Label>
                        </td>
        </tr>
        <tr>
            <td class="style2">
                State :</td>
            <td class="style2">
                <asp:DropDownList ID="drpstate" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="drpstate_SelectedIndexChanged" Height="27px" 
                    Width="124px">
                    <asp:ListItem>Select State</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style2">
                <asp:Label ID="lblState" runat="server"></asp:Label>
                        </td>
        </tr>
        <tr>
            <td>
                City :</td>
            <td>
                <asp:DropDownList ID="drpcity" runat="server" 
                    onselectedindexchanged="drpcity_SelectedIndexChanged" Width="124px" 
                    Height="27px">
                    <asp:ListItem>Select City</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:Label ID="lblCity" runat="server"></asp:Label>
                        </td>
        </tr>
        <tr>
            <td>
                Nationality :</td>
            <td>
                <asp:TextBox ID="txtnationality" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <h3 style="border-style: groove; border-color: #33CC33">
                    Resume Details</h3>
            </td>
        </tr>
        <tr>
            <td>
                Current Salary :</td>
            <td>
                <asp:TextBox ID="txtcurrentsal" runat="server" MaxLength="6"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txtcurrentsal" 
                    ErrorMessage="Current Salary should not be blank." SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
        </tr>
        <tr>
            <td>
                Category :</td>
            <td>
                <asp:DropDownList ID="drpcategory" runat="server" Height="27px" Width="124px" 
                   >
                    <asp:ListItem>Select Category</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:Label ID="lblCategory" runat="server"></asp:Label>
                        </td>
        </tr>
        <tr>
            <td>
                Expected Salary :</td>
            <td>
                <asp:TextBox ID="txtexpectsal" runat="server" MaxLength="6"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="txtexpectsal" 
                    ErrorMessage="Expected Salary should not be blank." SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
        </tr>
        <tr>
            <td class="style1">
                Experience :</td>
            <td class="style1">
                <asp:TextBox ID="txtexperience" runat="server"></asp:TextBox>
            </td>
            <td class="style1">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="txtexperience" ErrorMessage="Experience should not be blank." 
                    SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp; Degree :</td>
            <td class="style5">
                <asp:DropDownList ID="drpeducation" runat="server" Height="27px" Width="124px" 
                    >
                    <asp:ListItem>Select Degree</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style5">
                <asp:Label ID="lblEdu" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="btnsubmit" runat="server" onclick="btnsubmit_Click" 
                    Text="Submit" Height="23px" Width="66px" />
                &nbsp;<asp:Button ID="btnclear" runat="server" Text="Clear" 
                    onclick="btnclear_Click" Height="24px" Width="65px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>


