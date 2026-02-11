<%@ page language="java"
         contentType="text/html; charset=UTF-8"   
         pageEncoding="UTF-8"%>
<%@ include file="top.jsp"%>
        <br><br>
        <h2>회원매출조회</h2>
        <br><br>
        <table>
            <tr><th>번호</th><th>성명</th><th>연락처</th><th>주소</th><th>가입일</th></tr>                                                                                           
        <%
		try {
			Class.forName ("oracle.jdbc.OracleDriver");
			Connection con = DriverManager.getConnection ("jdbc:oracle:thin:@//localhost:1521/xe","system","1234");
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select a.custno,a.custname,count(b.custno), sum(b.amount), sum(b.price) from member_02 a left join money_02 b on a.custno=b.custno group by a.custno,a.custname order by a.custno");
			while(rs.next()) {
				out.println("<tr><td>" + rs.getInt(1) + "</td>");
                out.println("    <td>" + rs.getString(2) + "</td>");
                out.println("    <td>" + rs.getInt(3) + "</td>");
                out.println("    <td>" + rs.getInt(4) + "</td>");
                out.println("    <td>" + String.format("%,d",rs.getInt(5)) + "원</td></tr>");
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