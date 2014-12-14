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
	   
	   
	    
	 ps = con.prepareStatement("UPDATE TB_ACCOUNT_OPEN  SET mobile_phone=?,office_phone=? WHERE APPLICATION_NO = ?" );		
		 
		 String firstname=request.getParameter("t1");
       

		String application_no=request.getParameter("t2");
        
       String neha=request.getParameter("t3");
        

  

        
        
        
		ps.setString(3,firstname);
		ps.setString(1,application_no);
			ps.setString(2,neha);
		


		
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
New Contactno Update Successfully Please
</h1>
<a href="user.jsp"><h2> GOTO AGENT PORTAL </h2></a>
</body>

</html>