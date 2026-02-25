<%@ page language="java"
         contentType="text/html; charset=UTF-8"   
         pageEncoding="UTF-8"%>
<%@ include file = "top.jsp" %>    

        <h2>학생등록조회/수정</h2>
        <table>
            <tr> <th>수강생번호</th> <th>수강생이름</th> <th>전화번호</th> <th>생년월일</th> <th>자격코드</th> <th>합격여부</th> <th>수정</th> </tr>

	    <%
	    	try {
	    		Class.forName ("oracle.jdbc.OracleDriver");
	    		Connection con = DriverManager.getConnection ("jdbc:oracle:thin:@//localhost:1521/xe","system","1234");
	    		Statement stmt = con.createStatement();
	    		ResultSet rs = stmt.executeQuery("select * from student2");
	    		while(rs.next()) {
	    			out.println("<tr><td>" + rs.getString(1) + "</td>");
                    out.println("    <td>" + rs.getString(2) + "</td>");
                    out.println("    <td>" + rs.getString(3) + "</td>");
                    out.println("    <td>" + rs.getString(4).substring(0,10).replace("-","") + "</td>");
                    out.println("    <td>" + rs.getString(5) + "</td>");
                    out.println("    <td>");
                        if("1".equals(rs.getString(6))){
                            out.print("필기합격");
                        }
                        else {
                            out.print("최종합격");
                        }
                    out.println("    </td>");
                    out.println("    <td><a href='update.jsp?sno=" + rs.getString(1) + "'>수정</a></td></tr>");
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