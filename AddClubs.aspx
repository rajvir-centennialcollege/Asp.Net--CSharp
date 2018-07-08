<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddClubs.aspx.cs" Inherits="AddClubs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Club Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                    ControlToValidate="TextName"
                     ErrorMessage="Club Name Is Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text=" City"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextClubCity" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                    ControlToValidate="TextClubcity"
                     ErrorMessage="City Is Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Registration Number"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                    ControlToValidate="TextBox1" Type="Integer"
                     ErrorMessage="Registration Number Is Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
    </table> 
    </div>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add Club" />
        <asp:Label ID="Label4" runat="server"></asp:Label>
        <p>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Save Club" />
            <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
        </p>
    </form>
</body>
</html>
