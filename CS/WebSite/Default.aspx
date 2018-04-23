<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>
	<style>
		a {
			display: block;
		}
	</style>
</head>
<body>
	<form id="form1" runat="server">
		This page contains hyperlinks to several pages that demonstrate how the browser draws HTML element with height=100%. <br />
		The main problem here is that if you wish to set a relative height to an HTML element, all its parent HTML element's height <b>must</b>  be initialized. If there is any parent with a not initialized height, it collapses all its children. This example demonstrates this behavior.
		<br />
		Only this page is an ASP.NET page. All other pages in this example are pure HTML pages.
		<br />
		<br />
		<a href="InvalidCase1.html">Parent 0 does not have height 100%</a>
		<a href="InvalidCase2.html">Parent 1 does not have height 100%</a>
		<a href="InvalidCase3.html">Parent 2 does not have height 100%</a>
		<a href="InvalidCase4.html">Child element does not have height 100%</a>
		<a href="CorrectSolution.html">All page elements have height 100% (correct solution)</a>
	</form>
</body>
</html>
