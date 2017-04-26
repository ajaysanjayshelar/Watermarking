<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true"
    CodeBehind="registration.aspx.cs" Inherits="WebApplication1.WebForm3" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    DOCTOR REGISTRATION PAGE<br /></strong>
    <br />
    <table runat="server" id="tbl1">
        <tr>
            <td>
                ENTER FIRST NAME :
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="27px" Width="171px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBox1"
                    runat="server" ForeColor="Red" ErrorMessage="ENTER FIRST NAME"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                ENTER LAST NAME :
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="27px" Width="171px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TextBox2"
                    runat="server" ForeColor="Red" ErrorMessage="ENTER LAST NAME"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                ENTER EMAIL-ID :
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Height="27px" Width="171px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="TextBox3"
                    runat="server" ForeColor="Red" ErrorMessage="ENTER EMAIL-ID"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox3" ForeColor="red" ErrorMessage="ENTER VALID ID" 
                    ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                ENTER PASSWORD :
            </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Height="27px" Width="171px"></asp:TextBox>
               
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="TextBox4"
                    runat="server" ForeColor="Red" ErrorMessage="ENTER PASSWORD"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                ENTER MOBILE NO :
            </td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" Height="27px" Width="171px" 
                    MaxLength="10"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="TextBox5"
                    runat="server" ForeColor="Red" ErrorMessage="ENTER MOBILE NO"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="TextBox5" ForeColor="Red" ErrorMessage="ENTER VALID NO." 
                    ValidationExpression="^[7-9][0-9]{9}$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                SPECIALIST IN :
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Height="27px" Width="171px">
                    <asp:ListItem Value="0" Text="--SELECT--"></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="DropDownList1"
                    runat="server" ForeColor="Red" InitialValue="0" ErrorMessage="SELECT PROPER FIELD"></asp:RequiredFieldValidator>
            </td>
        </tr>
            <tr>
            <td>
                GENDER :
            </td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" Height="27px" Width="171px">
                    <asp:ListItem Value="0" Text="--SELECT--"></asp:ListItem>
                    <asp:ListItem>MALE</asp:ListItem>
                    <asp:ListItem>FEMALE</asp:ListItem>
                    <asp:ListItem>OTHER</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="DropDownList2"
                    runat="server" ForeColor="Red" InitialValue="0" ErrorMessage="SELECT GENDER"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td>
                ADDRESS :
                <br />
                <br />
                <br />
            </td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server" TextMode="MultiLine" Height="98px"  Width="171px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ControlToValidate="TextBox6"
                    runat="server" ForeColor="Red" ErrorMessage="ENTER ADDRESS"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
        <td></td>
        <td><br />
            <asp:Button ID="Button1" runat="server" Text="SUBMIT" Height="36px" 
                onclick="Button1_Click" />
        </td>
        </tr>
    </table>
</asp:Content>
