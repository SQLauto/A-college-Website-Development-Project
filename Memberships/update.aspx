<%@ Page Language="C#" MasterPageFile="~/Masterpages/MasterPage.master" AutoEventWireup="true" CodeFile="update.aspx.cs" validateRequest="false" Inherits="Memberships_update" Title="Untitled Page" %>
 <%@ Register TagPrefix="FTB" Namespace="FreeTextBoxControls" Assembly="FreeTextBox" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    Select menu: <asp:DropDownList ID="DropDownList1" runat="server" 
        AutoPostBack="True" DataSourceID="LinqDataSource1" DataTextField="name" 
        DataValueField="name" 
        onselectedindexchanged="DropDownList1_SelectedIndexChanged">
        <asp:ListItem>please make a selection</asp:ListItem>
         
    </asp:DropDownList> 
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    
<asp:FileUpload id="fileUpload" runat="server" />

<asp:Button id="btnSave" runat="server" Text="upload" onclick="btnSave_Click" />
<asp:Label id="lblMessage" runat="server" Text=""></asp:Label>
  <br /><br />
    <br />
      <FTB:FreeTextBox id="FreeTextBox1"
       ToolbarLayout=" ParagraphMenu, FontFacesMenu, FontSizesMenu, FontForeColorsMenu,FontForeColorPicker,FontBackColorsMenu,
  FontBackColorsMenu,FontBackColorPicker, Bold, Italic, Underline,JustifyLeft, JustifyRight, JustifyCenter, JustifyFull,StrikeThrough,RemoveFormat, Superscript, Subscript,(|) InsertImageFromGallery,  CreateLink,Unlink,  BulletedList,
 NumberedList, Indent, Outdent, Cut, Copy, Paste, Delete, Undo, Redo, Print, Save,
 ieSpellCheck, StyleMenu, SymbolsMenu, InsertHtmlMenu, InsertRule, InsertDate,
 InsertTime, WordCount, WordClean, InsertImage, InsertTable, InsertTableRowBefore,
 Preview, SelectAll,Preview, EditStyle"
       runat="Server" />
      
    <asp:Button ID="Button1" runat="server" Text="Update" onclick="Button1_Click" />   
      
      
      
      <br />        
    <asp:HyperLink ID="HyperLink1" runat="server" 
    NavigateUrl="~/Memberships/CreatingUserAccounts.aspx">Signup for a new account</asp:HyperLink>
      
    <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
        ContextTypeName="DataClassesDataContext" EnableDelete="True" 
        EnableInsert="True" EnableUpdate="True" TableName="dynamics">
    </asp:LinqDataSource>
</asp:Content>

