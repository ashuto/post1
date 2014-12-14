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
		

	   
	   
	    
		ps = con.prepareStatement("insert into SIGNUP(sno,uname,passwd,gen,fname,lname,addr,mobile) values (NULL,?,?,?,?,?,?,?)");		
		
		String fname=request.getParameter("t1");
        String lname=request.getParameter("t2");
        String address=request.getParameter("t3");
        String mobno=request.getParameter("t4");
        String gender=request.getParameter("s1");
        
        String uname=request.getParameter("t5");
        String pswd=request.getParameter("t6");
        
        
       // ps.setString(1,"NULL");
		ps.setString(1,uname);
		ps.setString(2,pswd);
		ps.setString(3,gender);
		ps.setString(4,fname);
		ps.setString(5,lname);
		ps.setString(6,address);
		ps.setString(7,mobno);
		
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
Registration Process Successfully please
</h1>
<a href="index.jsp"><h2> Login </h2></a>
</body>

</html>