<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="CustomerAdminDetails.aspx.cs" Inherits="aspTraining.Assign3.CustomerAdminDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
        DataSourceID="SqlDataSource1" DataTextField="UserID" DataValueField="UserID" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" style="height: 22px">
        <asp:ListItem Value="">Select a ID</asp:ListItem>
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" SelectCommand="SELECT [UserID], [UserName] FROM [User1]"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="UserID" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="UserID" HeaderText="UserID" ReadOnly="True" SortExpression="UserID" />
            <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
            <asp:BoundField DataField="EmailAddress" HeaderText="EmailAddress" SortExpression="EmailAddress" />
            <asp:CheckBoxField DataField="IsAdmin" HeaderText="IsAdmin" SortExpression="IsAdmin" />
            <asp:BoundField DataField="DateCreated" HeaderText="DateCreated" SortExpression="DateCreated" />
            <asp:BoundField DataField="CreatedBy" HeaderText="CreatedBy" SortExpression="CreatedBy" />
            <asp:BoundField DataField="DateModified" HeaderText="DateModified" SortExpression="DateModified" />
            <asp:BoundField DataField="ModifiedBy" HeaderText="ModifiedBy" SortExpression="ModifiedBy" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" DeleteCommand="DELETE FROM [User1] WHERE [UserID] = @UserID" InsertCommand="INSERT INTO [User1] ([UserID], [UserName], [EmailAddress], [IsAdmin], [DateCreated], [CreatedBy], [DateModified], [ModifiedBy]) VALUES (@UserID, @UserName, @EmailAddress, @IsAdmin, @DateCreated, @CreatedBy, @DateModified, @ModifiedBy)" SelectCommand="SELECT [UserID], [UserName], [EmailAddress], [IsAdmin], [DateCreated], [CreatedBy], [DateModified], [ModifiedBy] FROM [User1] WHERE ([UserID] = @UserID)" UpdateCommand="UPDATE [User1] SET [UserName] = @UserName, [EmailAddress] = @EmailAddress, [IsAdmin] = @IsAdmin, [DateCreated] = @DateCreated, [CreatedBy] = @CreatedBy, [DateModified] = @DateModified, [ModifiedBy] = @ModifiedBy WHERE [UserID] = @UserID">
        <DeleteParameters>
            <asp:Parameter Name="UserID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="UserID" Type="Int32" />
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="EmailAddress" Type="String" />
            <asp:Parameter Name="IsAdmin" Type="Boolean" />
            <asp:Parameter Name="DateCreated" Type="DateTime" />
            <asp:Parameter Name="CreatedBy" Type="String" />
            <asp:Parameter Name="DateModified" Type="DateTime" />
            <asp:Parameter Name="ModifiedBy" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="UserID" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="EmailAddress" Type="String" />
            <asp:Parameter Name="IsAdmin" Type="Boolean" />
            <asp:Parameter Name="DateCreated" Type="DateTime" />
            <asp:Parameter Name="CreatedBy" Type="String" />
            <asp:Parameter Name="DateModified" Type="DateTime" />
            <asp:Parameter Name="ModifiedBy" Type="String" />
            <asp:Parameter Name="UserID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="UserID" DataSourceID="SqlDataSource4" DefaultMode="Insert" Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="UserID" HeaderText="UserID" ReadOnly="True" SortExpression="UserID" />
            <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
            <asp:BoundField DataField="EmailAddress" HeaderText="EmailAddress" SortExpression="EmailAddress" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" DeleteCommand="DELETE FROM [User1] WHERE [UserID] = @UserID" InsertCommand="INSERT INTO [User1] ([UserID], [UserName], [EmailAddress]) VALUES (@UserID, @UserName, @EmailAddress)" SelectCommand="SELECT [UserID], [UserName], [EmailAddress] FROM [User1]" UpdateCommand="UPDATE [User1] SET [UserName] = @UserName, [EmailAddress] = @EmailAddress WHERE [UserID] = @UserID">
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
    <asp:GridView ID="GridView2" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="AddressID" DataSourceID="SqlDataSource3" PageSize="50" AllowPaging="True">
        <Columns>
            <asp:BoundField DataField="AddressID" HeaderText="AddressID" ReadOnly="True" SortExpression="AddressID" />
            <asp:BoundField DataField="Address1" HeaderText="Address1" SortExpression="Address1" />
            <asp:BoundField DataField="Address2" HeaderText="Address2" SortExpression="Address2" />
            <asp:BoundField DataField="Address3" HeaderText="Address3" SortExpression="Address3" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            <asp:BoundField DataField="StateID" HeaderText="StateID" SortExpression="StateID" />
            <asp:BoundField DataField="ZipCode" HeaderText="ZipCode" SortExpression="ZipCode" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" 
        DeleteCommand="DELETE FROM [Address] WHERE [AddressID] = @AddressID" 
        InsertCommand="INSERT INTO [Address] ([AddressID], [Address1], [Address2], [Address3], [City], [StateID], [ZipCode]) VALUES (@AddressID, @Address1, @Address2, @Address3, @City, @StateID, @ZipCode)" 
        SelectCommand="SELECT [AddressID], [Address1], [Address2], [Address3], [City], [StateID], [ZipCode] FROM [Address] WHERE ([UserID] = @UserID)" 
        UpdateCommand="UPDATE [Address] SET [Address1] = @Address1, [Address2] = @Address2, [Address3] = @Address3, [City] = @City, [StateID] = @StateID, [ZipCode] = @ZipCode WHERE [AddressID] = @AddressID">
        <DeleteParameters>
            <asp:Parameter Name="AddressID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="AddressID" Type="Int32" />
            <asp:Parameter Name="Address1" Type="String" />
            <asp:Parameter Name="Address2" Type="String" />
            <asp:Parameter Name="Address3" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="StateID" Type="Int32" />
            <asp:Parameter Name="ZipCode" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="UserID" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Address1" Type="String" />
            <asp:Parameter Name="Address2" Type="String" />
            <asp:Parameter Name="Address3" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="StateID" Type="Int32" />
            <asp:Parameter Name="ZipCode" Type="String" />
            <asp:Parameter Name="AddressID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
