<%@ page language="java"
         contentType="text/html; charset=UTF-8"   
         pageEncoding="UTF-8"%>
<%@ include file = "top.jsp" %>  

        <h2>예약현황조회/수정</h2>
        <table>
            <tr> <th>이름</th> <th>인원</th> <th>입실일</th> <th>퇴실일</th> <th>투숙비</th></tr>
	        <%
	        	try {
	        		Class.forName ("oracle.jdbc.OracleDriver");
	        		Connection con = DriverManager.getConnection ("jdbc:oracle:thin:@//localhost:1521/xe","system","1234");
	        		Statement stmt = con.createStatement();
	        		ResultSet rs = stmt.executeQuery("select b.cname, b.person, b.indate, b.outdate, r. price + (b.person - r.person) * r.oprice from booking b left join room r on b.rno=r.rno order by b.person asc");
	        		while(rs.next()) {
	        			out.println("<tr><td>" + rs.getString(1) + "</td>");
                        out.println("    <td>" + rs.getString(2) + "</td>");
                        out.println("    <td>" + rs.getString(3).substring(0,10).replace("-","") + "</td>");
                        out.println("    <td>" + rs.getString(4).substring(0,10).replace("-","") + "</td>");
                        out.println("    <td>" + rs.getString(5) + "</td>");
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