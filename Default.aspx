<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="cloudapp._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .style1
        {
            width:80%;border-color:Blue
        }
        .style2
        {
            width: 167px;
            height: 26px;
        }
        .style3
        {
            width: 167px;
            height: 21px;
        }
        .style4
        {
            height: 21px;
            width: 473px;
        }
        .style5
        {
            height: 26px;
            width: 473px;
        }
        .style7
        {
            height: 26px;
        }
        .style8
        {
            height: 23px;
        }
        .style9
        {
            height: 23px;
            width: 473px;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Welcome to Cloud App Bratati!
    </h2>
    <table class="style1" border="1px">
        <tr>
            <td class="style2">
                <asp:Label ID="lblNumber" runat="server" Text="Enter Number"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtNumber" runat="server"></asp:TextBox>
                &nbsp;&nbsp;<asp:RequiredFieldValidator ID="rfvNumbr" runat="server" 
                    ErrorMessage="Please enter a valid number" ControlToValidate="txtNumber"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="rgvNumver" runat="server" 
                    ErrorMessage="Please enter a valid number" ControlToValidate="txtNumber" 
                    MaximumValue="999999" MinimumValue="0" ></asp:RangeValidator>              
            </td>
        </tr>
        <tr>
            <td class="style3">
                </td>
            <td class="style4">
                <asp:DropDownList ID="ddlOperation" runat="server">                   
                    <asp:ListItem Value="1">Check Prime</asp:ListItem>
                   <%-- <asp:ListItem Value="2">Check Fibonacci</asp:ListItem>--%>
                    <asp:ListItem Value="3">Check Odd/Even</asp:ListItem>
                    <asp:ListItem Value="4">Check Armstrong Number</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr> 
        <tr>
            <td align="center" class="style8">
                </td>
            <td class="style9">
                <asp:Button ID="btnSubmit" runat="server" style="text-align: left" 
                    Text="Submit" onclick="btnSubmit_Click" />
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2" class="style7">
                <asp:Label ID="lblMessage" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
