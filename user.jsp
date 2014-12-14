<%
if(session.getAttribute("username")==null)
response.sendRedirect("index.jsp");
%>
<html>
<head>
 <body onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload="">
  <center>  &nbsp;</center>
  </body>
	<div style="font-size: 10px;color: #dadada;" id="dumdiv" align=center>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>NEW ACCOUNT</title>
</head>
<body background="image/images2.jpg">
<p align="left">
<td width="805" colspan="5">
<font face="Comic Sans MS" color="#000000" size="4">
<marquee>WELCOME TO AGENT PORTAL<body background="image/po.jpg"></marquee></font><font color="#000080" size="5"><b>Welcome:-   <%=session.getAttribute("username")%></b></font></td>&nbsp;
</p>
<table border="0" width="100%"cellpadding="10" style="border-width: 0px">
<tr>
<th style="border-style: none; border-width: medium"><i><font color="#FF0000" face="Times New Roman">
<a href="newac.html"><font color="#FF0000">NEW ACCOUNT</font></a></font></a></i></th>
<th style="border-style: none; border-width: medium"><i><a href="New%20lot.htm"><font color="#FF0000">NEW LOT</font></a></i></th>
<th style="border-style: none; border-width: medium"><i><a href="add%20ac.htm"><font color="#FF0000">ADD A.C.NO</font></a></i></th>
<th style="border-style: none; border-width: medium"><i><a href="update%20address.htm"><font color="#FF0000">UPDATE ADDRESS</font></a></i></th>
<th style="border-style: none; border-width: medium"><i><font color="#FF0000">
<a href="update%20contactno.htm"><font color="#FF0000">UPDATE CONTACTNO</font></a></font></a></i></th>
<th style="border-style: none; border-width: medium" width="101">
<font color="#FF0000"><a href="removeac.html"><font color="#FF0000">REMOVE</font></a></font><a href="removeac.html">
<font color="#FF0000">AC</font></a></th>
<th style="border-style: none; border-width: medium" width="82"><i><u>
<font color="#FF0000"><a href="Holi.pdf">
<font color="#FF0000">HOLIDAYS</font></a></font></a></u></i></th>
<th style="border-style: none; border-width: medium" width="108"><i><font color="#FF0000"><a href="sav.pdf">
<font color="#FF0000">SCHEMEINFO</font></a></font></a></i></th>
<th style="border-style: none; border-width: medium" width="98"><i><u><font color="#FF0000">
<a href="contact.pdf"><font color="#FF0000">CONTACTUS</font></a></font></u></i></th>
<th style="border-style: none; border-width: medium" width="67"><u><font color="#FF0000">
<a href="logout.jsp"><font color="#FF0000">LOGOUT</font></a></font></u></th>
</tr>
</table>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p align="center">&nbsp;</p>
<p align="center">&nbsp;</p>
<p align="center">&nbsp;</p>
<p align="center">&nbsp;</p>
<p align="center">&nbsp;</p>
<p align="center"><font size="5" color="#000000"><b><i>&nbsp; COPYRIGHT@UNDERGROUND DEVELOPER</i></b></font></p>
<p align="center">&nbsp;</p>
<p align="center">&nbsp;</p>
<p align="center">&nbsp;</p>
<p align="center">&nbsp;</p>
<p align="center">&nbsp;</p>
<p align="center">&nbsp;</p>
<p align="center">&nbsp;</p>
<p align="center">&nbsp;</p>
<p align="center">&nbsp;</p>
<p align="center">&nbsp;</p>
<p align="center">&nbsp;</p>
</html>