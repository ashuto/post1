<%@ page language="java" import ="java.sql.*"%>
<%@ page import="java.io.*"%>
<%
        Connection con=null;
		ResultSet rst=null;
		Statement stmt=null;

    try{
    
	   String url = "jdbc:oracle:thin:post/post@localhost:1521:XE";   
	   
	   Class.forName("oracle.jdbc.OracleDriver");
	   //out.write("Driver Loaded ");
	   
	   con = DriverManager.getConnection(url); 
	   
	   //out.write("Connection Established ");
	   stmt = con.createStatement(); 
    	
    	
		String uname=request.getParameter("uname");
        String passwd=request.getParameter("passwd");
        out.write(uname);
		out.write(passwd);

		
	
	    rst=stmt.executeQuery("select * from signup where uname = '" +uname+ "'"); 
		
		
		if(rst.next())
		{
		//out.println(rst.getString(1));
		
		
		if(uname.equalsIgnoreCase(rst.getString(2)) && passwd.equalsIgnoreCase(rst.getString(3)))
		{
		 	
			session.setAttribute("username",rst.getString(5));
			response.sendRedirect("user.jsp");
			

		}
				
		else
		{
		%>
		<jsp:forward page = "error.jsp" />	
		<%
		}
		}
		else
		{
		%>
		<jsp:forward page = "error.jsp" />	
		<%
		}
	} catch(Exception ee){out.write("An Error Related to DataBase had Occur and technically it is  "+ ee);}
	finally{
	stmt.close();
	con.close();
	
	}

%>