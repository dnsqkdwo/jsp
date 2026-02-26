<%@ page language="java"
         contentType="text/html; charset=UTF-8"   
         pageEncoding="UTF-8"%>
<%@ include file = "top.jsp" %>  

	<%

        String cname = request.getParameter("cname");
        String v2 = "";
        String v3 = "";
        String v4 = "";
        String v5 = "";

		try {
			Class.forName ("oracle.jdbc.OracleDriver");
			Connection con = DriverManager.getConnection ("jdbc:oracle:thin:@//localhost:1521/xe","system","1234");
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select * from booking where cname = '"+cname+"'");
			while(rs.next()) {
				v2 = rs.getString(2);
                v3 = rs.getString(3);
                v4 = rs.getString(4).substring(0,10);
                v5 = rs.getString(5).substring(0,10);
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
                <tr><th>예약자이름</th> <td><input type="text" name="v1" value="<%=cname%>"></td></tr>
                <tr><th>투숙인원</th><td><input type="text" name="v2" value="<%=v2%>"></td></tr>
                <tr><th>방번호</th>
                    <td>
                        <input type="radio" name="v3" value="101" <%=v3.equals("101") ? "checked" : ""%>>101
                        <input type="radio" name="v3" value="102" <%=v3.equals("102") ? "checked" : ""%>>102
                        <input type="radio" name="v3" value="201" <%=v3.equals("201") ? "checked" : ""%>>201
                        <input type="radio" name="v3" value="202" <%=v3.equals("202") ? "checked" : ""%>>202
                        <input type="radio" name="v3" value="301" <%=v3.equals("301") ? "checked" : ""%>>301
                    </td>
                </tr>

                <tr><th>입실일</th><td><input type="date" name="v4" value="<%=v4%>"></td></tr>
                <tr><th>퇴실일</th><td><input type="date" name="v5" value="<%=v5%>"></td></tr>

                <th colspan="2">
                    <input type="submit" value="입력">
                    <input type="button" value="조회">
                </th>
            </table>
        </form>

    <footer><h3>HRDKOREA Copyright@2023</h3></footer>
</body>
</html>