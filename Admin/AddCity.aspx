<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddCity.aspx.cs" Inherits="Admin_AddState" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

    .style7
    {
            width: 195px;
        }
    .style6
    {
            width: 287px;
        }
        .style8
        {
            width: 195px;
            height: 18px;
        }
        .style9
        {
            width: 287px;
            height: 18px;
        }
        .style10
        {
            height: 18px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table _designer:mapid="4" style="width: 101%;">
        <tr>
            <td class="style7" 
                style="font-family: Arial, Helvetica, sans-serif; font-size: large; font-weight: bold">
                Add New State</td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                </td>
            <td class="style9">
                <asp:Label ID="lblmessage" runat="server"></asp:Label>
            </td>
            <td class="style10">
                </td>
        </tr>
        <tr>
            <td class="style7">
                Select State :</td>
            <td class="style6">
                <asp:DropDownList ID="drpState" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="drpState_SelectedIndexChanged">
                    <asp:ListItem>--Select State--</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style7">
                Enter City Name :</td>
            <td class="style6">
                <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtCity" ErrorMessage="State Name should not be blank!" 
                    SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style6">
                <asp:Button ID="btnadd" runat="server" onclick="btnadd_Click" Text="Add" 
                    Height="27px" Width="80px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style6">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="City_id" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="City_id" HeaderText="City_id" InsertVisible="False" 
                            ReadOnly="True" SortExpression="City_id" />
                        <asp:BoundField DataField="State_id" HeaderText="State_id" 
                            SortExpression="State_id" />
                        <asp:BoundField DataField="City_name" HeaderText="City_name" 
                            SortExpression="City_name" />
                    </Columns>
                </asp:GridView>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style6">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:OPSConnectionString %>" 
                    SelectCommand="SELECT * FROM [City]" 
                    onselecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

