<%@ page language="java"
         contentType="text/html; charset=UTF-8"   
         pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>    

	<%
    String v1 = request.getParameter("custno");
    String v2 = request.getParameter("custname");
    String v3 = request.getParameter("phone");
    String v4 = request.getParameter("address");
    String v5 = request.getParameter("joindate");
    String v6 = request.getParameter("grade");
    String v7 = request.getParameter("city");
    String sql ="insert into member_02 VALUES('"+v1+"','"+v2+"','"+v3+"','"+v4+"','"+v5+"','"+v6+"','"+v7+"')";



		try {
			Class.forName ("oracle.jdbc.OracleDriver");
			Connection con = DriverManager.getConnection ("jdbc:oracle:thin:@//localhost:1521/xe","system","1234");
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			stmt.close();
			con.close();
		} catch (Exception e) {
			out.print(e);
		}
	%>
    <script>
        alert("회원등록이 완료 되었습니다.");
        location.href="index.jsp";
    </script>