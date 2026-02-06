<%@ page language="java"
         contentType="text/html; charset=UTF-8"   
         pageEncoding="UTF-8"%>
<%@ include file="top.jsp" %> 

        <h2>수강생등록조회/수정</h2>
        <table>
            <tr><td>수강생번호</td> <td>수강생이름</td> <td>전화번호</td> <td>생년월일</td> <td>자격코드</td> <td>합격여부</td> <td>수정</td></tr>
        
        
        <%
	        try {
	        	Class.forName ("oracle.jdbc.OracleDriver");
	        	Connection con = DriverManager.getConnection ("jdbc:oracle:thin:@//localhost:1521/xe","system","1234");
	        	Statement stmt = con.createStatement();
	        	ResultSet rs = stmt.executeQuery("select * from student");
	        	while(rs.next()) {
	        		out.println("<tr><td>" + rs.getString(1) + "</td>");
                    out.println("    <td>" + rs.getString(2) + "</td>");
                    out.println("    <td>" + rs.getString(3) + "</td>");
                    out.println("    <td>" + rs.getString(4).substring(0,11) + "</td>");
                    out.println("    <td>" + rs.getString(5) + "</td>");
                    out.println("    <td>");
                        if(rs.getInt(6) == 2) {
                            out.print("최종합격");
                        }

                        else {
                            out.print("필기합격");
                        }
                    out.println("    </td>");
                    out.println("    <td>" + "<a href='#'>수정</a>" + "</td></tr>");
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