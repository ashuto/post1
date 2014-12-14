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
	   
	   
	    
		ps = con.prepareStatement("insert into TB_ACCOUNT_OPEN (passbook_no,account_no,application_no,first_name,middle_name,last_name,gender,father_husband_first_name,father_husband_middle_name,father_husband_last_name,address_home,address_office,date_of_birth,amount,email,mobile_phone,office_phone,account_open_date,nomination_first_name,nomination_middle_name,nomination_last_name,nominee_gender,nominee_relation) values (null,null,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?) ");		
				
		
		
		String application_no=request.getParameter("t1");
        String firstname=request.getParameter("t2");
        String middlename=request.getParameter("t3");
        String lastname=request.getParameter("t4");
        String gender=request.getParameter("t5");
        String fatherhusbandfirstname=request.getParameter("t6");
        String fatherhusbandmiddlename=request.getParameter("t7");
        String fatherhusbandlastname=request.getParameter("t8");
        String addresshome=request.getParameter("t9");
        String addressoffice=request.getParameter("t10");
        String dateofbirth=request.getParameter("t11");
        String ammountnumber=request.getParameter("t12");
        String email=request.getParameter("t13");
        String mobilephonenumber=request.getParameter("t14");
        String officephonenumber=request.getParameter("t15");
        String accountopendate=request.getParameter("t16");
        String nominationfirstname=request.getParameter("t17");
        String nominationmiddlename=request.getParameter("t18");
        String nominationlastname=request.getParameter("t19");
        String nominationgender=request.getParameter("t20");
        String nominationrelation=request.getParameter("t21");
 

        
        
        //ps.setString(1,"NULL");
		ps.setString(1,application_no);
		ps.setString(2,firstname);
		ps.setString(3,middlename);
		ps.setString(4,lastname);
		ps.setString(5,gender);
		ps.setString(6,fatherhusbandfirstname);
		ps.setString(7,fatherhusbandmiddlename);
		ps.setString(8,fatherhusbandlastname);
    	ps.setString(9,addresshome);
		ps.setString(10,addressoffice);
		ps.setString(11,dateofbirth);
        ps.setString(12,ammountnumber);
        ps.setString(13,email);
        ps.setString(14,mobilephonenumber);
        ps.setString(15,officephonenumber);
        ps.setString(16,accountopendate);
        ps.setString(17,nominationfirstname);
        ps.setString(18,nominationmiddlename);
        ps.setString(19,nominationlastname);
        ps.setString(20,nominationgender);
        ps.setString(21,nominationrelation);

        
	int i1=	ps.executeUpdate();
		
	if(i1<1 )
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
New Account Data Insert Successfully Please
</h1>
<br/>
<a href="user.jsp"><h2> GOTO AGENT PORTAL </h2></a>
</body>

</html>