<%@ page language="java"
         contentType="text/html; charset=UTF-8"   
         pageEncoding="UTF-8"%>
<%@ include file="top.jsp"%>
        <br><br>
        <h2>회원목록조회/수정</h2>
        <br><br>
        <table>
            <tr><th>번호</th><th>성명</th><th>연락처</th><th>주소</th><th>가입일</th><th>등급</th><th>도시코드</th></tr>                                                                                           
        <%
		try {
			Class.forName ("oracle.jdbc.OracleDriver");
			Connection con = DriverManager.getConnection ("jdbc:oracle:thin:@//localhost:1521/xe","system","1234");
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select * from member_02");
			while(rs.next()) {
				out.println("<tr><td>" + rs.getString(1) + "</td>");
                out.println("    <td>" + rs.getString(2) + "</td>");
                out.println("    <td>" + rs.getString(3) + "</td>");
                out.println("    <td>" + rs.getString(4) + "</td>");
                out.println("    <td>" + rs.getString(5).substring(0,10) + "</td>");
                out.println("    <td>");
                if(rs.getString(6).equals("A"))out.println("VIP");
                else if(rs.getString(6).equals("B"))out.println("일반");
                else if(rs.getString(6).equals("C"))out.println("직원");
                out.println("</td>");
                out.println("    <td>" + rs.getString(7) + "</td></tr>");
			}
			stmt.close();
			con.close();
		} catch (Exception e) {
			out.print(e);
		}
	    %>
        </table>
    </section>
    <footer><h2>HRDKOREA Copyright@2023</h2></footer>
</body>
</html>