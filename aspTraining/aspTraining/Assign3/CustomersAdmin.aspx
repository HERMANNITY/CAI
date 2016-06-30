<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="CustomersAdmin.aspx.cs" 
    Inherits="aspTraining.Assign3.CustomersAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="UserID" 
        DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." AllowPaging="True" AllowSorting="True" PageSize="50">
    <Columns>
        <asp:CommandField ShowEditButton="True" />
        <asp:BoundField DataField="UserID" HeaderText="UserID" ReadOnly="True" SortExpression="UserID" />
        <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
        <asp:BoundField DataField="EmailAddress" HeaderText="EmailAddress" SortExpression="EmailAddress" />
    </Columns>
</asp:GridView>
    <asp:DetailsView ID="DetailsView1" runat="server" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="125px" OnPageIndexChanging="DetailsView1_PageIndexChanging">
        <Fields>
            
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" 
    DeleteCommand="DELETE FROM [Userr] WHERE [UserID] = @UserID" 
    InsertCommandType="StoredProcedure"
    InsertCommand="spAddUser"
    ProviderName="<%$ ConnectionStrings:DatabaseConnectionString1.ProviderName %>" 
    SelectCommand="SELECT [UserID], [UserName], [EmailAddress] FROM [Userr]" 
    UpdateCommand="UPDATE [Userr] SET [UserName] = @UserName, [EmailAddress] = @EmailAddress WHERE [UserID] = @UserID">
    <DeleteParameters>
        <asp:Parameter Name="UserID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="UserName" Type="String" />
        <asp:Parameter Name="EmailAddress" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="UserName" Type="String" />
        <asp:Parameter Name="EmailAddress" Type="String" />
        <asp:Parameter Name="UserID" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
