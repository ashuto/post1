<%@ page language="java" import ="java.sql.*"%>
<%@ page import="java.io.*"%>
<%
        Connection con=null;
		ResultSet rst=null;
		
		PreparedStatement ps = null;
		
    try{
    	String apno=request.getParameter("t1");
    	String url = "jdbc:oracle:thin:post/post@localhost:1521:XE";	  
	   
	    Class.forName("oracle.jdbc.OracleDriver"); 
	   
	   
	    con = DriverManager.getConnection(url); 
	   
	   
	    Statement stmt=con.createStatement();
	 rst = stmt.executeQuery("select first_name,last_name,account_no,amount,account_open_date from TB_ACCOUNT_OPEN WHERE APPLICATION_NO = '"+apno+"'" );
		
		 while(rst.next())
		 {
			%>
		         

  

        
        
        
		
		
	
		



<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>submit page</title>
</head>


<body background="image/images2.jpg">
<h1>
</h1>
<a href="user.jsp"><h2> HOME</h2></a>
<table align="center" border="1" size="30">
<tr>
<td style="size=30"><font size="6">First Name :</font></td>
<td><label ><%=rst.getString(1)%></label></td>
</tr>
<tr>
<td style="size=30"><font size="6">Last Name :</font></td>
<td><label><%=rst.getString(2)%></label></td>
</tr>
<tr>
<td style="size=30"><font size="6">Account Number :</font></td>
<td><label><%=rst.getString(3)%></label></td>
</tr>
<tr>
<td style="size=30"><font size="6">Opening Amount :</font></td>
<td><label><%=rst.getInt(4)%></label></td>
</tr>
<tr>
<td style="size=30"><font size="6">Account Open Date :</font></td>
<td><label><%=rst.getDate(5)%></label></td>
</tr>

</table>

<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="submit" value="MAKE PAYMENT" >&nbsp;&nbsp; <a href="New%20lot.htm"> 
<input type="button" value="CLOSE"></a></p>

</body>
<% }
				
	} catch(Exception ee){out.write("An Error Related to DataBase had Occur and technically it is  "+ ee);}
finally{
	

	con.close();
	
	}


%>
</html>