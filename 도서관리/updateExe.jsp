<%@ page language="java"
         contentType="text/html; charset=UTF-8"   
         pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>    

<%
    String v1 = request.getParameter("v1");
    String v2 = request.getParameter("v2");
    String v3 = request.getParameter("v3");
    String v4 = request.getParameter("v4");
    String v5 = request.getParameter("v5");
    String v6 = request.getParameter("v6");

    String sql = "UPDATE reservation SET custname = '"+v2+"', bookno = '"+v3+"', outdate = '"+v4+"', indate = '"+v5+"', status = '"+v6+"' WHERE lentno = '"+v1+"'";

	try {
		Class.forName ("oracle.jdbc.OracleDriver");
		Connection con = DriverManager.getConnection ("jdbc:oracle:thin:@//localhost:1521/xe","system","1234");
		
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		rs.next();
		stmt.close();
		con.close();
	} catch (Exception e) {
		out.print(e);
	}
    
%>

<script>
    alert("수정 완료");
    location.href = "index.jsp";
</script>

<!-- 업데이트 미완성 -->