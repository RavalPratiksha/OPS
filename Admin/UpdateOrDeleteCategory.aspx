<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="UpdateOrDeleteCategory.aspx.cs" Inherits="Admin_UpdateOrDeleteCategory" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<h3>Manage Category</h3><br>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="Category_Id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Category_Id" HeaderText="Category_Id" 
                InsertVisible="False" ReadOnly="True" SortExpression="Category_Id" />
            <asp:BoundField DataField="Category_Name" HeaderText="Category_Name" 
                SortExpression="Category_Name" />
        </Columns>
    </asp:GridView>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:OPSConnectionString %>" 
        DeleteCommand="DELETE FROM [Category] WHERE [Category_id] = @Category_id" 
        InsertCommand="INSERT INTO [Category] ([Category_name]) VALUES (@Category_name)" 
        SelectCommand="SELECT * FROM [Category]" 
        
    UpdateCommand="UPDATE [Category] SET [Category_name] = @Category_name WHERE [Category_id] = @Category_id">
        <DeleteParameters>
            <asp:Parameter Name="Category_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Category_name" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Category_name" Type="String" />
            <asp:Parameter Name="Category_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

