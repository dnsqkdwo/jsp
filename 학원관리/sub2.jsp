<%@ page language="java"
         contentType="text/html; charset=UTF-8"   
         pageEncoding="UTF-8"%>
<%@ include file = "top.jsp"%>   

        <h2>수강생등록조회/수정</h2>
        <table>
            <tr> <th>수강생번호</th> <th>수강생이름</th> <th>전화번호</th> <th>생년월일</th> <th>등록코스</th> <th>등록상태</th> <th>수정</th> </tr>
        
        <%
	    	try {
	    		Class.forName ("oracle.jdbc.OracleDriver");
	    		Connection con = DriverManager.getConnection ("jdbc:oracle:thin:@//localhost:1521/xe","system","1234");
	    		Statement stmt = con.createStatement();
	    		ResultSet rs = stmt.executeQuery("select * from institute");
	    		while(rs.next()) {
	    			out.println("<tr><td>" + rs.getString(1) + "</td>");
                    out.println("    <td>" + rs.getString(2) + "</td>");
                    out.println("    <td>" + rs.getString(3) + "</td>");
                    out.println("    <td>" + rs.getString(4).substring(0,10).replace("-", "") + "</td>");
                    out.println("    <td>");
                        if("1".equals(rs.getString(5))) {
                            out.print("시스템분석");
                        }
                        else if("2".equals(rs.getString(5))) {
                            out.print("전산개론");
                        }
                        else if("3".equals(rs.getString(5))) {
                            out.print("마케팅개론");
                        }
                        else {
                            out.print("사회학");
                        }
                    out.println("    </td>");
                    out.println("    <td>");
                        if("1".equals(rs.getString(6))) {
                            out.print("수강");
                        }
                        else {
                            out.print("미수강");
                        }
                    out.println("    <td><a href='update.jsp?inno=" + rs.getString(1) + "'>수정</a></td></tr>");
                    
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