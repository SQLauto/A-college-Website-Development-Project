<%@ Page Language="C#" MasterPageFile="~/Masterpages/MasterPage.master" AutoEventWireup="true" CodeFile="online.aspx.cs" Inherits="menu_online" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">


    .style38
    {
        text-align: center;
        font-weight: bold;
        font-size: large;
    }

    .style39
    {
        text-align: center;
    }

    .style40
    {
        text-align: center;
        font-size: medium;
    }

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="style38">Shamser Fakir Degree College </div>
<div class="style39"><span class="style37">Nickrail, Bhuapur, Tangail</span><br />
    </div>

                                         <div class="style40"> 
                                             <br />
                                             Online Application Form </div><br />
                                         <div ><table><tr><td>
                                             Name:</td><td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td></tr>
                                        <tr><td> Father&#39;s Name :</td><td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td></tr>
                                         <tr><td>Mother&#39;s Name :</td><td><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td></tr>
                                        <tr><td>Address:</td> 
                                         <td><asp:TextBox ID="TextBox4" TextMode="MultiLine" Width="507px" Height="28px" 
                                                 runat="server"></asp:TextBox><br /></td>
                                       
                                         
                                                 </tr>
                                                 
                                                 <tr><td>Choose a faculty :</td><td>
                                                     <asp:DropDownList ID="DropDownList1" runat="server">
                                                         <asp:ListItem>H.s.c</asp:ListItem>
                                                         <asp:ListItem>Honers</asp:ListItem>
                                                         <asp:ListItem>Masters</asp:ListItem>
                                                     </asp:DropDownList>
                                                 </td></tr>
                                                 <tr><td>Education Qualification:</td><td></td></tr>
                                                 <tr><td>S.S.C :</td><td></td></tr>
                                                 <tr><td>School name:</td><td>
                                                     <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td></tr>
                                                     <tr><td>GPA:</td><td>
                                                         <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></td></tr>
                                                         <tr><td>Passing year:</td><td>
                                                         <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox></td></tr>
                                                         <tr><td>Faculty</td><td>
                                                         <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox></td></tr>
                                                         <tr><td>H.S.C :</td><td></td></tr>
                                                 <tr><td>College name:</td><td>
                                                     <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox></td></tr>
                                                     <tr><td>GPA:</td><td>
                                                         <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox></td></tr>
                                                         <tr><td>Passing year:</td><td>
                                                         <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox></td></tr>
                                                         <tr><td>Faculty</td><td>
                                                         <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox></td></tr>
                                                          <tr><td>Degree/Honers:</td><td></td></tr>
                                                      <tr><td>College name:</td><td>
                                                     <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox></td></tr>
                                                     <tr><td>GPA:</td><td>
                                                         <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox></td></tr>
                                                         <tr><td>choose:</td><td>
                                                             <asp:DropDownList ID="DropDownList2" runat="server">
                                                                 <asp:ListItem>Honers</asp:ListItem>
                                                                 <asp:ListItem>Degree</asp:ListItem>
                                                             </asp:DropDownList> </td></tr> 
                                                        
                                                         <tr><td>Passing year:</td><td>
                                                         <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox></td></tr>
                                                         <tr><td>Faculty:</td><td>
                                                         <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox></td></tr> 
                                                         
                                                          
                                                       <tr><td>
                                                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                           <br />
                                                           <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                           <asp:Button ID="Button1" runat="server" Text="Submit" /></td><td>
                                                        </td></tr> 
                                                   </table>
                                         </div>

    <asp:Literal runat='server' id='ph1'></asp:Literal>
</asp:Content>

