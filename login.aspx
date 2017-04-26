<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplication1.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p align="center">
        <table style="height: 170px" runat="server">
            <tr>
                <td>Select Category : 
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>--SELECT--</asp:ListItem>
                        <asp:ListItem>Admin</asp:ListItem>
                        <asp:ListItem>Doctor</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="SELECT CATEGORY"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>USERNAME : 
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBox1" runat="server" ForeColor="Red" ErrorMessage="ENTER ID"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>PASSWORD : 
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="Red" ControlToValidate="TextBox2" ErrorMessage="ENTER PASSWORD"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>

                    <asp:Button ID="Button1" runat="server" Text="SUBMIT" OnClick="Button1_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" ValidationGroup="l2" Text="RESET" OnClick="Button2_Click" />
                </td>
                <td>
                    <asp:Label ID="Label2" runat="server" ForeColor="Red" Text="INVALID DATA"></asp:Label>
                </td>
                <td>
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click"
                        ValidationGroup="vsdvdfd" ForeColor="Blue">NEW DOCTOR REGISTRATION?</asp:LinkButton>
                </td>
            </tr>
        </table>
    </p>

</asp:Content>
