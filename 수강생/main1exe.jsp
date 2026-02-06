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
    String sql = "insert into student values ('"+v1+"','"+v2+"','"+v3+"','"+v4+"','"+v5+"','"+v6+"')"; 

    try {
        Class.forName ("oracle.jdbc.OracleDriver");
        Connection con = DriverManager.getConnection ("jdbc:oracle:thin:@//localhost:1521/xe","system","1234");
        Statement stmt = con.createStatement();
        stmt.executeUpdate(sql);
        stmt.close();
        con.close();
    } catch (Exception e) {
		out.print(e);
	}
%>
    <script>
        alert("등록이 완료되었습니다");
        location.href='main2.jsp';
    </script>
