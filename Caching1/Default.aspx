<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<%@ Register src="WebUserControl.ascx" tagname="WebUserControl" tagprefix="uc1" %>
<%@ Register src="WebUserControl2.ascx" tagname="WebUserControl2" tagprefix="uc2" %>
<%--<%@ OutputCache Duration="10" VaryByParam="None" %>--%>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        &nbsp;<uc1:WebUserControl ID="WebUserControl1" runat="server" />
        &nbsp;&nbsp;
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <uc2:WebUserControl2 ID="WebUserControl21" runat="server" />
        <br />
    
    </div>
    </form>
</body>
</html>
