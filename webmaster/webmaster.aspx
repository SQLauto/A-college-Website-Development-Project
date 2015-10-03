<%@ Page Language="C#" MasterPageFile="~/Masterpages/MasterPage.master" AutoEventWireup="true" CodeFile="webmaster.aspx.cs" Inherits="webmaster_webmaster" validateRequest="false" Title="webmaster" %>

<%@ Register TagPrefix="FTB" Namespace="FreeTextBoxControls" Assembly="FreeTextBox" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
  .style1
  {
    width: 100%;
  }
    .style2
    {  text-align: left;
        width: 55px;
    }
    .style3
    {
        width: 204px;
    }
    .style4
    {
            width: 204px;
            font-size: small;
            text-align: center;
        }
    .style5
    {
        font-size: small;
    }
            .jk{
color: #4088b8;
text-decoration:underline;
}
a.jk:hover
{
text-decoration:none;color: #de4e06;

}
.top1
{
	text-align:left;
	vertical-align:top;
	}
        .style6
        {
            text-align: left;
            vertical-align: top;
            font-size: small;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<table class="style1" runat="server" id="FormTable">
  <tr>
    <td colspan="3">&nbsp;<p class="style5"> Send your comments using the form below. Thank you</p>
      
    </td>
  </tr>
  
   <tr><td colspan="3"> &nbsp;</td></tr>
   <tr>
    <td colspan="3" class="style5">&nbsp;</td></tr>
     <tr><td colspan="3"> &nbsp;</td></tr>
  <tr>
    <td class="style4">
      Your name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
    <td class="top1">
      <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
    </td>
    <td>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="txtName" ErrorMessage="Please enter your name">*</asp:RequiredFieldValidator>
    </td>
  </tr>
  <tr>
    <td class="style4">
      Your e-mail address </td>
    <td class="top1">
      <asp:TextBox ID="txtEmailAddress" runat="server"></asp:TextBox>
     
    </td>
    <td>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ErrorMessage="Please enter an e-mail address" 
        ControlToValidate="txtEmailAddress" Display="Dynamic">*</asp:RequiredFieldValidator>
      <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ErrorMessage="Please enter a valid e-mail address" 
        ControlToValidate="txtEmailAddress" Display="Dynamic" 
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
    </td>
  </tr>
  
  <tr>
    <td class="style4">
        Your phone number&nbsp; </td>
    <td class="top1">
       <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox></td>
    <td>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="txtName" ErrorMessage="Please enter phone number">*</asp:RequiredFieldValidator></td>
  </tr>
  
  
 


<tr>
    <td class="style6">
        &nbsp; Comment</td>
    <td class="top1">
      <asp:TextBox ID="txtComments" runat="server" Height="142px" TextMode="MultiLine" 
        Width="598px"></asp:TextBox>
    </td>
    <td>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
        ErrorMessage="Please enter your query" ControlToValidate="txtComments" 
        Display="Dynamic">*</asp:RequiredFieldValidator>
    </td>
  </tr>
<tr><td colspan="3">&nbsp;</td></tr>
<tr>
    <td class="style3">
         &nbsp;
         </td>
    <td class="top1">
    
         <asp:Button ID="btnSend" runat="server" Text="Send" onclick="btnSend_Click"   />
    
    </td>
    <td>
      &nbsp;
      
      </td>
  </tr>


 <tr>
    <td colspan="3">
      <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
        HeaderText="Please correct the following errors before you press the Send button" />
    </td>
  </tr>

</table>

<asp:Label ID="lblMessage" runat="server" Text="Message Sent" Visible="false"></asp:Label>
</asp:Content>

