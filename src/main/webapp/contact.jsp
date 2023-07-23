<%@page import="java.sql.*"%>
<%!
	//vars
	private Connection con;
	private Statement stmt;
	private ResultSet rs;

%>
<% 
	//capture the loginform data
	String fname=request.getParameter("name");
String lname=request.getParameter("email");
String uname=request.getParameter("message");

	try
	{
	//connection establishment
		Class.forName("com.mysql.cj.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ep_sec11","root","2004ecru");
//		creating querty to insert data

			String vsql="insert into contact values('"+name+"','"+email+"','"+message+"')";
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
			<jsp:include page="/contact.html"></jsp:include>
		<%
			}
	
	}
	catch(Exception e)
	{
		System.out.println(e.getMessage());
	}

%>