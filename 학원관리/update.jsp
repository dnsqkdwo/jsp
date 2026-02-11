<%@ page language="java"
         contentType="text/html; charset=UTF-8"   
         pageEncoding="UTF-8"%>
<%@ include file = "top.jsp"%>   


        <%
            String inno = request.getParameter("inno");
            
            String v2 = "";
            String v3 = "";
            String v4 = "";
            String v5 = "";
            String v6 = "";

	    	try {
	    		Class.forName ("oracle.jdbc.OracleDriver");
	    		Connection con = DriverManager.getConnection ("jdbc:oracle:thin:@//localhost:1521/xe","system","1234");
	    		Statement stmt = con.createStatement();
	    		ResultSet rs = stmt.executeQuery("SELECT * FROM institute WHERE inno = '" + inno + "'");
	    		while(rs.next()) {
					v2 = rs.getString(2);
					v3 = rs.getString(3);
					v4 = rs.getString(4);
					v5 = rs.getString(5);
                    v6 = rs.getString(6);
				}
	    		stmt.close();
	    		con.close();
	    	} catch (Exception e) {
	    		out.print(e);
	    	}
	    %>

        <h2>수강생등록</h2>
        <form action="updateExe.jsp">
            <table>
                <tr><th>수강생번호</th> <td><input type="text" readonly name="v1" value="<%=inno%>" ></td></tr>
                <tr><th>수강생이름</th> <td><input type="text"  name="v2" value="<%=v2%>"></td></tr>
                <tr><th>전화번호</th> <td><input type="text"  name="v3" value="<%=v3%>"></td></tr>
                <tr><th>생년월일</th> <td><input type="text"  name="v4" value="<%=v4%>"></td></tr>
                <tr><th>등록코스</th> <td>
                    <input type="radio"  name="v5" checked value="<%=v5%>">시스템분석
                    <input type="radio"  name="v5" value="<%=v5%>">전산개론
                    <input type="radio"  name="v5" value="<%=v5%>">마케팅개론
                </td></tr>
                <tr><th>등록상태</th> <td>
                    <input type="radio"  name="v6" checked value="<%=v6%>">수강
                    <input type="radio"  name="v6" value="<%=v6%>">미수강
                </td></tr>
                <tr><th colspan="2">
                    <input type="submit" value="수정">
                </th></tr>
            </table>
        </form>
    </section>
    <footer><h3>HRDKOREA Copyright@2023</h3></footer>
       
</body>
</html>