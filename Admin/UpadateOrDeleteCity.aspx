<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="UpadateOrDeleteCity.aspx.cs" Inherits="Admin_UpadateOrDeleteCity" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<h3>Manage City</h3><br>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="City_id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="City_id" HeaderText="City_id" InsertVisible="False" 
                ReadOnly="True" SortExpression="City_id" />
            <asp:BoundField DataField="State_id" HeaderText="State_id" 
                SortExpression="State_id" />
            <asp:BoundField DataField="City_name" HeaderText="City_name" 
                SortExpression="City_name" />
        </Columns>
    </asp:GridView>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:OPSConnectionString %>" 
        DeleteCommand="DELETE FROM [City] WHERE [City_id] = @City_id" 
        InsertCommand="INSERT INTO [City] ([State_id], [City_name]) VALUES (@State_id, @City_name)" 
        SelectCommand="SELECT * FROM [City]" 
        
    UpdateCommand="UPDATE [City] SET [State_id] = @State_id, [City_name] = @City_name WHERE [City_id] = @City_id">
        <DeleteParameters>
            <asp:Parameter Name="City_id" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="State_id" Type="Int32" />
            <asp:Parameter Name="City_name" Type="String" />
            <asp:Parameter Name="City_id" Type="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="State_id" Type="Int32" />
            <asp:Parameter Name="City_name" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
</asp:Content>

