<%@ page language="java"
         contentType="text/html; charset=UTF-8"   
         pageEncoding="UTF-8"%>
<%@ include file = "top.jsp" %>    

        <h2>자격조회</h2>
        <table>
            <tr> <th>자격코드</th> <th>자격증명</th> <th>필기합격</th> <th>최종합격</th> </tr>

	    <%
	    	try {
	    		Class.forName ("oracle.jdbc.OracleDriver");
	    		Connection con = DriverManager.getConnection ("jdbc:oracle:thin:@//localhost:1521/xe","system","1234");
	    		Statement stmt = con.createStatement();
	    		ResultSet rs = stmt.executeQuery("select l.lno, l.lname, count(case when s.status = '1' then 1 end), count(case when s.status = '2' then 1 end) from licence2 l left join student2 s on s.lino=l.lno group by l.lno, l.lname order by l.lno asc");
	    		while(rs.next()) {
	    			out.println("<tr><td>" + rs.getString(1) + "</td>");
                    out.println("    <td>" + rs.getString(2) + "</td>");
                    out.println("    <td>" + rs.getString(3) + "</td>");
                    out.println("    <td>" + rs.getString(4) + "</td></tr>");
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