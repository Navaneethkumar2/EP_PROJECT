<%@page import="java.sql.*"%>
<%!
	//vars
	private Connection con;
	private Statement stmt;
	private ResultSet rs;

%>
<% 
	//capture the loginform data
	String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String uname=request.getParameter("uname");
	
	
	String password=request.getParameter("password");
	String email=request.getParameter("email");
	try
	{
	//connection establishment
		Class.forName("com.mysql.cj.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","Navaneeth22!");
//		creating querty to insert data

			String vsql="insert into user values('"+fname+"','"+lname+"','"+uname+"','"+password+"','"+email+"')";
//		creating statement object
			stmt = con.createStatement();
			
//		execute the query using  execiteQuery
			int n=stmt.executeUpdate(vsql);
			
//			send some response to the client
			if(n>0) {
				%>
			<center>
				<b>Register Successfully</b>
			</center>
			<jsp:include page="/index.html"></jsp:include>
		<%
			}
	
	}
	catch(Exception e)
	{
		System.out.println(e.getMessage());
	}

%>