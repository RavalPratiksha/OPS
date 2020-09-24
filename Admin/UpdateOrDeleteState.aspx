<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="UpdateOrDeleteState.aspx.cs" Inherits="Admin_UpdateOrDeleteState" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<h3>Manage State</h3><br>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="State_id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="State_id" HeaderText="State_id" 
                InsertVisible="False" ReadOnly="True" SortExpression="State_id" />
            <asp:BoundField DataField="Country_id" HeaderText="Country_id" 
                SortExpression="Country_id" />
            <asp:BoundField DataField="State_name" HeaderText="State_name" 
                SortExpression="State_name" />
        </Columns>
    </asp:GridView>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:OPSConnectionString %>" 
        DeleteCommand="DELETE FROM [State] WHERE [State_id] = @State_id" 
        InsertCommand="INSERT INTO [State] ([Country_id], [State_name]) VALUES (@Country_id, @State_name)" 
        SelectCommand="SELECT * FROM [State]" 
        
        UpdateCommand="UPDATE [State] SET [Country_id] = @Country_id, [State_name] = @State_name WHERE [State_id] = @State_id">
        <DeleteParameters>
            <asp:Parameter Name="State_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Country_id" Type="Int32" />
            <asp:Parameter Name="State_name" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Country_id" Type="Int32" />
            <asp:Parameter Name="State_name" Type="String" />
            <asp:Parameter Name="State_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

