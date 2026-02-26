<%@ page language="java"
         contentType="text/html; charset=UTF-8"   
         pageEncoding="UTF-8"%>
<%@ include file = "top.jsp" %>    

        <h2>코스조회</h2>
        <table>
            <tr> <th>코스코드</th> <th>교수</th> <th>코스이름</th> <th>등록수강생</th> <th>운영상태</th> </tr>
            	<%
		            try {
		            	Class.forName ("oracle.jdbc.OracleDriver");
		            	Connection con = DriverManager.getConnection ("jdbc:oracle:thin:@//localhost:1521/xe","system","1234");
		            	Statement stmt = con.createStatement();
		            	ResultSet rs = stmt.executeQuery("select a.course, a.teacher, a.cname, count(case when b.status = '1' then 1 end), a.status from course2 a left join institute2 b on a.course=b.course group by a.course, a.teacher, a.cname, a.status order by a.course");
		            	while(rs.next()) {
		            		out.println("<tr><td>" + rs.getString(1) + "</td>");
                            out.println("    <td>" + rs.getString(2) + "</td>");
                            out.println("    <td>" + rs.getString(3) + "</td>");
                            out.println("    <td>" + rs.getString(4) + "</td>");
                            out.println("    <td>");
                                if("1".equals(rs.getString(5))) {
                                    out.print("운영");
                                }
                                else {
                                    out.print("미운영");
                                }
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