<%@ page language="java"
         contentType="text/html; charset=UTF-8"   
         pageEncoding="UTF-8"%>
<%@ include file = "top.jsp" %>    

        <h2>쇼핑몰 회원관리 프로그램</h2>
        <table>
            <tr><th>회원번호</th> <th>회원성명</th> <th>매출횟수</th> <th>매출수량</th> <th>매출액</th></tr>
            	<%
	            	try {
	            		Class.forName ("oracle.jdbc.OracleDriver");
	            		Connection con = DriverManager.getConnection ("jdbc:oracle:thin:@//localhost:1521/xe","system","1234");
	            		Statement stmt = con.createStatement();
	            		ResultSet rs = stmt.executeQuery("select b.custno, b.custname, count(a.custno), NVL(sum(a.amount), 0), NVL(sum(a.price),0) from money a right join member b on a.custno=b.custno group by b.custno, b.custname order by b.custno asc");
	            		while(rs.next()) {
	            			out.println("<tr><td>" + rs.getString(1) + "</td>");
                            out.println("    <td>" + rs.getString(2) + "</td>");
                            out.println("    <td>" + rs.getString(3) + "</td>");
                            out.println("    <td>" + rs.getString(4) + "</td>");
                            out.println("    <td>" + rs.getString(5) + "</td></tr>");
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