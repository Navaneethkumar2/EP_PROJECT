<%@page import="java.sql.*" %>
<%!
	//vars
	private Connection con;
	private PreparedStatement stmt;
	private ResultSet rs;

%>
<% 
	//capture the loginform data
	String uname=request.getParameter("user");
	String password=request.getParameter("password");
	try{
	//connection establishment
		Class.forName("com.mysql.cj.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","Navaneeth22!");
		String vsql="select *from  user where uname=? and password=?";
		stmt = con.prepareStatement(vsql);
		stmt.setString(1,uname);
		stmt.setString(2,password);
		
		//execute query
		rs = stmt.executeQuery();
		
		if(rs.next())
		{
			request.setAttribute("uname",uname);
			%>
		    <jsp:forward page="/welcome.jsp"></jsp:forward>
		    <%
		}
		else{
			%>
		    <center><b>Invalid UserName/Password. Login Failed</b></center>
		    <jsp:include page="/login.html"></jsp:include>
		    <%
		}
	}
	catch(Exception e)
	{
		System.out.println(e.getMessage());
	}

%>