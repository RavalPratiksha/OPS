<%@ Page Title="" Language="C#" MasterPageFile="~/OuterMasterPage.master" AutoEventWireup="true" CodeFile="LoginPage.aspx.cs" Inherits="LoginForm" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 17px;
        }
        .style2
        {
            height: 17px;
            width: 268px;
        }
        .style3
        {
            width: 268px;
        }
        .style4
        {
            color: #0000CC;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;<table style="width:100%;">
        <tr>
            <td class="style1">
                <h3><asp:Label ID="lblhead" runat="server" Text="JobSeeker Login"></asp:Label></h3>
            </td>
            <td class="style2">
                <asp:Image ID="Image1" runat="server" Height="138px" ImageAlign="Left" 
                    ImageUrl="~/NewImages/loginhand.jpg" Width="203px" />
            </td>
            <td class="style1" align="justify">
                <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="12pt" 
                    PostBackUrl="~/EmployerLogin.aspx" ForeColor="#663300">Employer Login</asp:LinkButton>
            &nbsp;<span class="style4">click here</span></td>
        </tr>
        <tr>
            <td class="style1">
            </td>
            <td class="style2">
                <asp:Label ID="lblMessage" runat="server" ForeColor="Blue"></asp:Label>
            </td>
            <td class="style1">
            </td>
        </tr>
        <tr>
            <td>
                Enter UserName :</td>
            <td class="style3">
                <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
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
            <td class="style3">
                <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
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
            <td class="style3">
                <asp:Button ID="btnlogin" runat="server" onclick="Button1_Click" Text="Login" 
                    Height="25px" Width="69px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <br />
                Not Registered.......?</td>
            <td class="style3">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
                <asp:LinkButton ID="btnlinkreg" runat="server" 
                    PostBackUrl="JobSeekerRegister.aspx">Register Now</asp:LinkButton>
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
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
