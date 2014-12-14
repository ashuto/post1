<html>

<head>
<meta http-equiv="Content-Language" content="en">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Fill Your Registration Form</title>
<script type="text/javascript" src="check1.js">
</script>

<script type="text/javascript">
function apply()
{
  document.frm.sub.disabled=true;
  if(document.frm.chk.checked==true)
  {
    document.frm.sub.disabled=false;
  }
  if(document.frm.chk.checked==false)
  {
    document.frm.sub.enabled=false;
  }
}
</script>
 

</head>

<body background="image/images2.jpg">

<div align="center">
<table border="0" width="806" height="665" cellspacing="5" style="border-width: 0px">
	
	<form name="frm" action="submit.jsp" method="post" onsubmit="return validation(this)">
	
	<tr>
		<td colspan="2" height="150" style="border-style: none; border-width: medium; ">
		<img border="0" src="image/2.jpg" width="1323" height="164"></td>
	</tr>
	<tr>
		<td colspan="2" style="border-style: none; border-width: medium; " align="center">
		<font color="#800000" size="5">Fill Your Registration Form</font></td>
	</tr>
	<tr>
		<td colspan="2" style="border-style: none; border-width: medium; ">
		<p align="left"><b><font color="#FF0000">Note:- All the field are 
		mandatory.</font></b></td>
	</tr>
	<tr>
		<td align="right" width="341" style="border-style: none; border-width: medium; ">
		<b>First Name</b></td>
		<td align="left" width="449" style="border-style: none; border-width: medium; ">
		<input type="text" name="t1" id="t1" size="30"></td>
	</tr>
	<tr>
		<td align="right" width="341" style="border-style: none; border-width: medium; "><b>Last Name</b></td>
		<td align="left" width="449" style="border-style: none; border-width: medium; ">
		<input type="text" name="t2" id="t2" size="30"></td>
	</tr>
	<tr>
		<td align="right" width="341" style="border-style: none; border-width: medium; "><b>Address</b></td>
		<td align="left" width="449" style="border-style: none; border-width: medium; ">
		
			<textarea rows="2" name="t3" id="t3" cols="24"></textarea></td>
	</tr>
	<tr>
		<td align="right" width="341" style="border-style: none; border-width: medium; "><b>Mobile no</b></td>
		<td align="left" width="449" style="border-style: none; border-width: medium; ">
		<input type="text" name="t4" id="t4" size="30" maxlength="10">&nbsp;</td>
	</tr>
	<tr>
		<td align="right" width="341" style="border-style: none; border-width: medium; ">
		<b>Gender</b></td>
		<td align="left" width="449" style="border-style: none; border-width: medium; ">
		
			<select size="1" name="s1">
			<option value="0">Select</option>
			<option value="male">male</option>
			<option value="female">female</option>
			</select>
		
		</td>
	</tr>
	<tr>
		<td colspan="2" style="border-style: none; border-width: medium; ">
		<p align="center">&nbsp;</td>
	</tr>
	<tr>
		<td colspan="2" style="border-style: none; border-width: medium; ">
		<p align="center"><font color="#800000" size="5">Details of your 
		Login ID</font></td>
	</tr>
	

	<tr>
		<td align="right" width="341" style="border-style: none; border-width: medium; ">
		<b>UserName </b> </td>
		<td align="left" width="449" style="border-style: none; border-width: medium; ">
		<p align="left"><input type="text" name="t5" id="t5" size="29" maxlength="6"></td>
	</tr>
	<tr>
		<td align="right" width="341" style="border-style: none; border-width: medium;  ">
		<b>Password</b></td>
		<td align="left" width="449" style="border-style: none; border-width: medium; ">
		<input type="password" name="t6" id="t6" size="29"maxlength="10" 
{
alert("Please enter Password"); ></td>
	</tr>
	<tr>
		<td align="right" width="341" style="border-style: none; border-width: medium; ">
		<b>Re-Enter Password</b></td>
		<td align="left" width="449" style="border-style: none; border-width: medium; ">
		<input type="password" name="t7" id="t7" size="29"maxlength="10"></td>
	</tr>
	<tr>
		<td colspan="2" style="border-style: none; border-width: medium; ">&nbsp;</td>
	</tr>
	<tr>
		<td colspan="2" style="border-style: none; border-width: medium; ">
		<p align="center"><input type="checkbox" name="chk" onClick="apply()"> I have checked that above entries are correct </td>
	</tr>
	<tr>
		<td colspan="2" style="border-style: none; border-width: medium; ">
		<p align="center"><input type="submit" name="sub" value="SUBMIT" disabled></td>
	</tr>
	<tr>
		<td align="right" width="793" colspan="2" style="border-style: none; border-width: medium; ">
		<p align="center"><b><i>COPYRIGHT@UNDERGROUND DEVELOPER</i></b></td>
	</tr>
	
	</form>
</table>
</div>

</body>

</html>
