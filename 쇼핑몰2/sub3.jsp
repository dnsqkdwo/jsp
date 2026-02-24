<%@ page language="java"
         contentType="text/html; charset=UTF-8"   
         pageEncoding="UTF-8"%>
<%@ include file="top.jsp" %>  


    <section>
        <h2>회원매출조회</h2>
        <table><tr> <th>회원번호</th> <th>회원성명</th> <th>매출횟수</th> <th>매출수량</th> <th>매출액</th> </tr>
            <%
	        	try {
	        		Class.forName ("oracle.jdbc.OracleDriver");
	        		Connection con = DriverManager.getConnection ("jdbc:oracle:thin:@//localhost:1521/xe","system","1234");
	        		Statement stmt = con.createStatement();
	        		ResultSet rs = stmt.executeQuery("select a.custno, a.custname, count(a.custno), sum(b.amount), sum(b.price) from member_02 a left join money_02 b on a.custno=b.custno group by a.custno, a.custname order by a.custno asc");
	        		while(rs.next()) {
	        			out.println("<tr><td>" + rs.getString(1) + "</td>");
                        out.println("    <td>" + rs.getString(2) + "</td>");
                        out.println("    <td>" + rs.getString(3) + "</td>");
                        out.println("    <td>" + rs.getInt(4) + "</td>");
                        out.println("    <td>" + rs.getInt(5) + "</td></tr>");
	        		}
	        		stmt.close();
	        		con.close();
	        	} catch (Exception e) {
	        		out.print(e);
	        	}
	        %>
        </table>
    </section>
    <footer><h3>HRDKOREA Copyright@2023</h3></footer>
</body>
</html>