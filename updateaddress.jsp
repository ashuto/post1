<%@ page language="java" import ="java.sql.*"%>
<%@ page import="java.io.*"%>
<%
        Connection con=null;
		ResultSet rst=null;
		
		PreparedStatement ps = null;
		
    try{
    	
    	String url = "jdbc:oracle:thin:post/post@localhost:1521:XE";	  
	   
	    Class.forName("oracle.jdbc.OracleDriver"); 
	   
	   
	    con = DriverManager.getConnection(url); 
	   
		String apno=request.getParameter("t1");
	    
	 ps = con.prepareStatement("UPDATE TB_ACCOUNT_OPEN  SET address_home=?,address_office=? WHERE APPLICATION_NO = '"+apno+"'" );		
		 
		 
       

		String hadd=request.getParameter("t4");
        
       String oadd=request.getParameter("t3");
        

  

        
        
        
				ps.setString(1,hadd);
			ps.setString(2,oadd);
		


		
		int i=ps.executeUpdate();
		if(i<1)
		{
		response.sendRedirect("failed.jsp");
		}
		
	
		
				
	} catch(Exception ee){out.write("An Error Related to DataBase had Occur and technically it is  "+ ee);}
finally{
	ps.close();

	con.close();
	
	}

%>


<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>submit page</title>
</head>


<body background="image/images2.jpg">
<h1>
New Address Update Successfully Please
</h1>
<a href="user.jsp"><h2> GOTO AGENT PORTAL </h2></a>
</body>

</html>