<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	Connection conn = null;
	
	try{
		Context init = new InitialContext();
		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
		conn = ds.getConnection();
		
		if( conn != null )
		{
			//out.println("<h3>연결되었습니다.</h3>");
			String test_sql = "SELECT * FROM EMPLOYEES";
			PreparedStatement ps = conn.prepareStatement(test_sql);
			ResultSet rs = ps.executeQuery();
%>
<table>
<%			
			while( rs.next() )
			{
				out.print("<tr>");
				out.print("<td>" + rs.getString("FIRST_NAME") + "</td>");
				out.print("</tr>");
			}
		}
	} catch(Exception e){
		//out.println("<h3>실패</h3>");
		e.printStackTrace();
	}
%>
</table>