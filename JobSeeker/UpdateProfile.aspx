<%@ Page Title="" Language="C#" MasterPageFile="~/Jobseeker/JobseekerMasterPage.master" AutoEventWireup="true" CodeFile="UpdateProfile.aspx.cs" Inherits="UpdateProfile" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td colspan="3">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                <br />
                <h3>Update JobSeeker Profile</h3>
                <br />
                <br />
                <asp:Image ID="Image1" runat="server" Height="174px" 
                    ImageUrl="~/NewImages/lady talk.jpg" Width="339px" />
                <br />
                <br />
                <br />
                <asp:Label ID="lblMsg" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <h3>
                    Update your Account</h3>
            </td>
        </tr>
        <tr>
            <td>
                Password :</td>
            <td>
                <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtpassword" ErrorMessage="Password should not be blank." 
                    SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
        </tr>
        <tr>
            <td>
                Confirm Password :</td>
            <td>
                <asp:TextBox ID="txtconformpw" runat="server" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txtpassword" ControlToValidate="txtconformpw" 
                    ErrorMessage="Please enter valid email id." SetFocusOnError="True"></asp:CompareValidator>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtconformpw" 
                    ErrorMessage="Confirm Password should not be blank." SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
        </tr>
        <tr>
            <td colspan="3">
                <h3>
                    Update Contact Details</h3>
            </td>
        </tr>
        <tr>
            <td>
                Enter Name :</td>
            <td>
                <asp:TextBox ID="txtfname" runat="server"></asp:TextBox>
                &nbsp;&nbsp;
                <asp:TextBox ID="txtmname" runat="server"></asp:TextBox>
                &nbsp;&nbsp;
                <asp:TextBox ID="txtlname" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Birth Date :</td>
            <td>
                <asp:TextBox ID="txtbirthdate" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Gender :</td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                    RepeatDirection="Horizontal">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="RadioButtonList1" ErrorMessage="Please select Gender." 
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
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtcontactnum" ErrorMessage="Contact Num should not be blank." 
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
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtaddress" ErrorMessage="Address should not be blank." 
                    SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
        </tr>
        <tr>
            <td>
                Employer Email Id :</td>
            <td>
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtemail" ErrorMessage="Please enter valid email id." 
                    SetFocusOnError="True" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtemail" ErrorMessage="Email id should not be blank." 
                    SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
        </tr>
        <tr>
            <td>
                Country :</td>
            <td>
                <asp:DropDownList ID="drpcountry" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="drpcountry_SelectedIndexChanged">
                    <asp:ListItem>--Select Country--</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:Label ID="lblCountry" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                State :</td>
            <td>
                <asp:DropDownList ID="drpstate" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="drpstate_SelectedIndexChanged">
                    <asp:ListItem>--Select State--</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:Label ID="lblState" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                City :</td>
            <td>
                <asp:DropDownList ID="drpcity" runat="server" 
                    onselectedindexchanged="drpcity_SelectedIndexChanged">
                    <asp:ListItem>--Select City--</asp:ListItem>
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
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="btnupdate" runat="server" onclick="btnupdate_Click" 
                    Text="Update" Height="24px" Width="67px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

