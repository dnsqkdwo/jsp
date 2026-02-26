<%@ page language="java"
         contentType="text/html; charset=UTF-8"   
         pageEncoding="UTF-8"%>
<%@ include file = "top.jsp" %>    

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
			ResultSet rs = stmt.executeQuery("select * from institute2 where inno = '"+inno+"'");
			while(rs.next()) {
				v2 = rs.getString(2);
                v3 = rs.getString(3);
                v4 = rs.getString(4).substring(0,10);
                v5 = rs.getString(5);
                v6 = rs.getString(6);
			}
			stmt.close();
			con.close();
		} catch (Exception e) {
			out.print(e);
		}
	%>

        <h2>수강생 수정</h2>
        <form action="updateExe.jsp">
            <table>
                <tr> <th>수강생번호</th> <td><input type = "text" name="v1" value="<%=inno%>" readonly></td> </tr>
                <tr> <th>수강생이름</th> <td><input type = "text" name="v2" value="<%=v2%>"></td> </tr>
                <tr> <th>전화번호</th> <td><input type = "text" name="v3" value="<%=v3%>"></td> </tr>
                <tr> <th>생년월일</th> <td><input type = "date" name="v4" value="<%=v4%>"></td> </tr>
                <tr> <th>등록코스</th> <td>
                     <input type="radio" name="v5" value="1" <%=v5.equals("1") ? "checked" : ""%>>시스템분석
                     <input type="radio" name="v5" value="2" <%=v5.equals("2") ? "checked" : ""%>>전산개론
                     <input type="radio" name="v5" value="3" <%=v5.equals("3") ? "checked" : ""%>>마케팅개론
                     <input type="radio" name="v5" value="4" <%=v5.equals("4") ? "checked" : ""%>>사회학
                    </td> </tr>
                <tr> <th>등록상태</th>
                    <td>
                        <input type="radio" name="v6" value="1" <%=v6.equals("1") ? "checked" : ""%>> 수강
                        <input type="radio" name="v6" value="2" <%=v6.equals("2") ? "checked" : ""%>> 미수강
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="수정">
                        <a href="sub2.jsp"><input type="button" value="조회"></a>
                    </td>
                </tr>
            </table>
        </form>
    </section>
    <footer><h3>HRDKOREA Copyright@2023</h3></footer>
</body>
</html>