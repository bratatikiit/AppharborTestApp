<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="AppharborTestApp.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head id="Head1" runat="server">
    <title></title>
    <link href="~/Styles/Site.css" rel="stylesheet" type="text/css" />

</head>
<body>
    <form id="Form1" runat="server">
    <div class="page">
        <div class="header">
            <div class="title">
                <h1>
                    Welcome to my Application
                </h1>
            </div>
            <div class="loginDisplay">
               
            </div>
            <div class="clear hideSkiplink">
               
            </div>
        </div>
        <div class="main">
            <asp:LinkButton ID="lnkContinue" runat="server" onclick="LinkButton1_Click" 
                CssClass="title" Font-Size="Larger">Continue</asp:LinkButton>
        </div>
        <div class="clear">
        </div>
    </div>
    <div class="footer">
        
    </div>
    </form>
</body>
</html>
