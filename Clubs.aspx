<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Clubs.aspx.cs" Inherits="Clubs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1">
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ClubConnectionString %>" SelectCommand="SELECT [RegNo], [ClubName], [ClubCity] FROM [Table]"></asp:SqlDataSource>
    </form>
</body>
</html>
