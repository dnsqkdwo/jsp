<%@ page language="java"
         contentType="text/html; charset=UTF-8"   
         pageEncoding="UTF-8"%>
<%@ include file="top.jsp" %>    

    
        <h2>미납도서조회/수정</h2>
        <table>
            <tr> <th>대출번호</th> <th>고객이름</th> <th>도서이름</th> <th>대출일자</th> <th>반납일자</th> <th>대출상태</th> <th>변경</th> </tr>
            	<%
	            	try {
	            		Class.forName ("oracle.jdbc.OracleDriver");
	            		Connection con = DriverManager.getConnection ("jdbc:oracle:thin:@//localhost:1521/xe","system","1234");
	            		Statement stmt = con.createStatement();
	            		ResultSet rs = stmt.executeQuery("select a.lentno, a.custname, b.bookname, a.outdate, a.indate, a.status from reservation_tbl a left join bookinfo_tbl b on a.bookno=b.bookno where a.status = '1' order by a.lentno asc");
	            		while(rs.next()) {
	            			out.println("<tr><td>" + rs.getString(1) + "</td>");
                            out.println("    <td>" + rs.getString(2) + "</td>");
                            out.println("    <td>" + rs.getString(3) + "</td>");
                            out.println("    <td>" + rs.getString(4).substring(0,10) + "</td>");
                            out.println("    <td>" + (rs.getString(5) == null ? "" : rs.getString(5).substring(0,10) )+ "</td>");
                            out.println("    <td>");
                                if("1".equals(rs.getString(6))) {
                                    out.print("대출");
                                }

                                else {
                                    out.print("반납");
                                }
                            out.println("    <td><a href='#'>변경</a></td>");
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