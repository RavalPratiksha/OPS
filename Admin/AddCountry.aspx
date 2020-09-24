<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddCountry.aspx.cs" Inherits="Admin_AddCountry" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td colspan="3">
                <h3>Add New Country</h3></td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="lblmessage" runat="server"></asp:Label>
                        </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Enter Country Name :</td>
            <td>
                <asp:TextBox ID="txtcountry" runat="server" 
                    ></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtcountry" ErrorMessage="Country Name should not be blank." 
                    SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="btnadd" runat="server" onclick="btnadd_Click" Text="Add" 
                    Height="26px" Width="83px" />
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
            <td>
                &nbsp;</td>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="Country_id" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="Country_id" HeaderText="Country_id" 
                            InsertVisible="False" ReadOnly="True" SortExpression="Country_id" />
                        <asp:BoundField DataField="Country_name" HeaderText="Country_name" 
                            SortExpression="Country_name" />
                    </Columns>
                </asp:GridView>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:OPSConnectionString %>" 
                    SelectCommand="SELECT * FROM [Country]"></asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

