<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="CustomerAdminDetails.aspx.cs" Inherits="aspTraining.Assign3.CustomerAdminDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
    <asp:DetailsView ID="DetailsView1" runat="server" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="125px">
        <Fields>
            <asp:CommandField ShowDeleteButton="True" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>"
        DeleteCommand="DELETE FROM [Userr] WHERE [UserID] = @UserID" 
        InsertCommand="INSERT INTO [Userr] ([UserID], [UserName], [EmailAddress]) VALUES (@UserID, @UserName, @EmailAddress)" 
        ProviderName="<%$ ConnectionStrings:DatabaseConnectionString1.ProviderName %>" 
        SelectCommand="SELECT [UserID], [UserName], [EmailAddress] FROM [Userr]" 
        UpdateCommand="UPDATE [Userr] SET [UserName] = @UserName, [EmailAddress] = @EmailAddress WHERE [UserID] = @UserID">

        <DeleteParameters>
            <asp:Parameter Name="UserID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="UserID" Type="Int32" />
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
