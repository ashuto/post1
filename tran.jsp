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
	   
	   
	    
	 ps = con.prepareStatement("UPDATE TRAN A SET A.PASSBOOK_NO = ?,A.ACCOUNT_NO = ? WHERE A.APPLICATION_NO = ?" );		
		 
		 String firstname=request.getParameter("t1");
       

		String application_no=request.getParameter("t2");
        
       String neha=request.getParameter("t3");
        

  

        
        
        
		ps.setString(1,firstname);
		ps.setString(2,application_no);
			ps.setString(3,neha);
		


		
		ps.executeUpdate();
		
	
		
				
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
New Account Data Insert Successfully Please
</h1>
<a href="user.jsp"><h2> GOTO AGENT PORTAL </h2></a>
</body>

</html>