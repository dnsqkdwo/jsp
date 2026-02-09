<%@ page language="java"
         contentType="text/html; charset=UTF-8"   
         pageEncoding="UTF-8"%>
<%@ include file="top.jsp" %> 

        <h2>자격 조회</h2>
        <table>
            <tr><td>자격코드</td><td>자격증명</td><td>필기합격</td><td>최종합격</td></tr>
        	<%
	        	try {
	        		Class.forName ("oracle.jdbc.OracleDriver");
	        		Connection con = DriverManager.getConnection ("jdbc:oracle:thin:@//localhost:1521/xe","system","1234");
	        		Statement stmt = con.createStatement();
	        		ResultSet rs = stmt.executeQuery("SELECT l.lno, l.lname, COUNT(CASE WHEN s.status = '1' THEN 1 END), COUNT(CASE WHEN s.status = '2' THEN 1 END) FROM licence l JOIN student s ON l.lno = s.lino GROUP BY l.lno, l.lname ORDER BY l.lno ASC");
	        		while(rs.next()) {
	        			out.println(" <tr><td> " + rs.getString(1) + "</td>");
                        out.println("     <td> " + rs.getString(2) + "</td>");
                        out.println("     <td> " + rs.getString(3) + "</td>");
                        out.println("     <td> " + rs.getString(4) + "</td></tr>");
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