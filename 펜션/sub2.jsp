<%@ page language="java"
         contentType="text/html; charset=UTF-8"   
         pageEncoding="UTF-8"%>
<%@ include file = "top.jsp" %>  

        <h2>예약현황조회/수정</h2>
        <table>
            <tr> <th>이름</th> <th>인원</th> <th>방번호</th> <th>입실일</th> <th>퇴실일</th> <th>수정</th> </tr>
	        <%
	        	try {
	        		Class.forName ("oracle.jdbc.OracleDriver");
	        		Connection con = DriverManager.getConnection ("jdbc:oracle:thin:@//localhost:1521/xe","system","1234");
	        		Statement stmt = con.createStatement();
	        		ResultSet rs = stmt.executeQuery("select * from booking");
	        		while(rs.next()) {
	        			out.println("<tr><td>" + rs.getString(1) + "</td>");
                        out.println("    <td>" + rs.getString(2) + "</td>");
                        out.println("    <td>" + rs.getString(3) + "</td>");
                        out.println("    <td>" + rs.getString(4).substring(0,10).replace("-","") + "</td>");
                        out.println("    <td>" + rs.getString(5).substring(0,10).replace("-","") + "</td>");
                        out.println("    <td><a href='update.jsp?cname=" + rs.getString(1) + "'>수정</a></td></tr>");
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