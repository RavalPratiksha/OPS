<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="UpdateOrDeleteCountry.aspx.cs" Inherits="Admin_UpdateOrDeleteCountry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<h3>Manage Country</h3>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="Country_id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Country_id" HeaderText="Country_id" 
                InsertVisible="False" ReadOnly="True" SortExpression="Country_id" />
            <asp:BoundField DataField="Country_name" HeaderText="Country_name" 
                SortExpression="Country_name" />
        </Columns>
    </asp:GridView>
    <br/>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:OPSConnectionString %>" 
        DeleteCommand="DELETE FROM [Country] WHERE [Country_id] = @Country_id" 
        InsertCommand="INSERT INTO [Country] ([Country_name]) VALUES (@Country_name)" 
        SelectCommand="SELECT * FROM [Country]" 
        
        UpdateCommand="UPDATE [Country] SET [Country_name] = @Country_name WHERE [Country_id] = @Country_id" 
        onselecting="SqlDataSource1_Selecting">
        <DeleteParameters>
            <asp:Parameter Name="Country_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Country_name" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Country_name" Type="String" />
            <asp:Parameter Name="Country_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

