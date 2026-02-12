<%@ page language="java"
         contentType="text/html; charset=UTF-8"   
         pageEncoding="UTF-8"%>
<%@ include file = "top.jsp" %>    


        <%

            String lentno = request.getParameter("lentno");

            String custname = "";
            String bookno = "";
            String outdate = "";
            String indate = "";
            String status = "";



	    	try {
	    		Class.forName ("oracle.jdbc.OracleDriver");
	    		Connection con = DriverManager.getConnection ("jdbc:oracle:thin:@//localhost:1521/xe","system","1234");
	    		Statement stmt = con.createStatement();
	    		ResultSet rs = stmt.executeQuery("select * from reservation where lentno = '"+lentno+"'");
	    		while(rs.next()) {
	    			custname = rs.getString(2);
                    bookno = rs.getString(3);
                    outdate = rs.getString(4);
                    indate = rs.getString(5) == null ? "" : rs.getString(5).substring(0,10);
                    status = rs.getString(6);
	    		}
	    		stmt.close();
	    		con.close();
	    	} catch (Exception e) {
	    		out.print(e);
	    	}
	    %>




        <h2>수정</h2>
        <form action="updateExe.jsp">
            <table>
                <tr><th>대출번호</th><td><input type="text" name="v1" readonly value="<%=lentno%>"></td></tr>
                <tr><th>고객성명</th><td><input type="text" name="v2" value="<%=custname%>"></td></tr>
                <tr><th>도서코드</th><td><input type="text" name="v3" value="<%=bookno%>"></td></tr>
                <tr><th>대출일자</th><td><input type="text" name="v4" value="<%=outdate%>"></td></tr>
                <tr><th>반납일자</th><td><input type="text" name="v5" value="<%=indate%>"></td></tr>
                <tr><th>대출상태</th>
                    <td>
                        <input type="radio" name="v6" value="1" <%= "1".equals(status)?"checked":"" %>>대출
                        <input type="radio" name="v6" value="2" <%= "2".equals(status)?"checked":"" %>>반납
                    </td></tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="입력">
                        <input type="button" value="조회" onclick="location.href = 'sub2.jsp';">
                    </td>
                </tr>
            </table>
        </form>
        
    </section>
    <footer><h3>HRDKOREA Copyright@2023</h3></footer>
</body>
</html>

<!-- 업데이트 미완성 -->