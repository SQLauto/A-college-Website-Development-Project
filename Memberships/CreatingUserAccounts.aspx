<%@ Page Language="C#" MasterPageFile="~/Masterpages/MasterPage.master" AutoEventWireup="true" CodeFile="CreatingUserAccounts.aspx.cs" Inherits="Memberships_CreatingUserAccounts" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        Enter a username:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:TextBox ID="Username" runat="server"></asp:TextBox>
        <br />
        
        Choose a password:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="Password" TextMode="Password" runat="server"></asp:TextBox>        
        <br />
        
        Enter your email address:&nbsp;
        <asp:TextBox ID="Email" runat="server"></asp:TextBox>
        <br />
        
        <asp:Label runat="server" ID="SecurityQuestion"></asp:Label>:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:TextBox ID="SecurityAnswer" runat="server"></asp:TextBox>
        <br />
                
        <asp:Button ID="CreateAccountButton" runat="server" 
            Text="Create the User Account" onclick="CreateAccountButton_Click"  />
    </p>
    <p>
        <asp:Label ID="CreateAccountResults" runat="server"></asp:Label>
    </p>    
</asp:Content>

