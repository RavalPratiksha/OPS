<%@ Page Title="" Language="C#" MasterPageFile="~/OuterMasterPage.master" AutoEventWireup="true" CodeFile="EmployerLogin.aspx.cs" Inherits="EmployerLogin" %>

<script runat="server">

    protected void txtusername_TextChanged(object sender, EventArgs e)
    {

    }
</script>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 17px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;<table style="width:100%;">
        <tr>
            <td class="style1">
                <h3><asp:Label ID="lblhead" runat="server" Text="Employer Login"></asp:Label></h3>
            </td>
            <td class="style1">
                <asp:Image ID="Image1" runat="server" Height="138px" ImageAlign="Left" 
                    ImageUrl="~/NewImages/loginhand.jpg" Width="203px" />
            </td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
            </td>
            <td class="style1">
                <asp:Label ID="lblMessage" runat="server" ForeColor="Blue"></asp:Label>
            </td>
            <td class="style1">
            </td>
        </tr>
        <tr>
            <td>
                Enter UserName :</td>
            <td>
                <asp:TextBox ID="txtempusername" runat="server" 
                    ontextchanged="txtusername_TextChanged"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtusername" ErrorMessage="UserName should not be blank." 
                    SetFocusOnError="True" Visible="False"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Enter Password :</td>
            <td>
                <asp:TextBox ID="txtemppassword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtpassword" ErrorMessage="Password should not be blank." 
                    SetFocusOnError="True" Visible="False"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click1" Text="Login" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <br />
                Not Registered.......?</td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
                <asp:LinkButton ID="btnlinkreg" runat="server" 
                    PostBackUrl="~/EmployerRegister.aspx">Register Now</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="btnlinkforgetrpw" runat="server" 
                    PostBackUrl="ForgetPassword.aspx">Forget Password</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;
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
    </table>
</asp:Content>
