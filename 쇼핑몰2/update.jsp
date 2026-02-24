<%@ page language="java"
         contentType="text/html; charset=UTF-8"   
         pageEncoding="UTF-8"%>
<%@ include file="top.jsp" %>

	<%

        String custno = request.getParameter("custno");
        
        String v2 = "";
        String v3 = "";
        String v4 = "";
        String v5 = "";
        String v6 = "";
        String v7 = "";

		try {
			Class.forName ("oracle.jdbc.OracleDriver");
			Connection con = DriverManager.getConnection ("jdbc:oracle:thin:@//localhost:1521/xe","system","1234");
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select * from member_02 where custno = '"+custno+"'");
			while(rs.next()) {
				v2 = rs.getString(2);
                v3 = rs.getString(3);
                v4 = rs.getString(4);
                v5 = rs.getString(5);
                v6 = rs.getString(6);
                v7 = rs.getString(7);
			}
			stmt.close();
			con.close();
		} catch (Exception e) {
			out.print(e);
		}
	%>


    <section>
        <h2>회원 정보 수정</h2>
        <form action="updateExe.jsp">
            <table>
                <tr><th>회원번호</th><td><input type="text" name="v1" value="<%=custno%>" readonly ></td></tr>
                <tr><th>회원성명</th><td><input type="text" name="v2" value="<%=v2%>"></td></tr>
                <tr><th>회원전화</th><td><input type="text" name="v3" value="<%=v3%>"></td></tr>
                <tr><th>회원주소</th><td><input type="text" name="v4" value="<%=v4%>"></td></tr>
                <tr><th>가입일자</th><td><input type="text" name="v5" value="<%=v5%>"></td></tr>
                <tr><th>고객등급</th><td><input type="text" name="v6" value="<%=v6%>"></td></tr>
                <tr><th>도시코드</th><td><input type="text" name="v7" value="<%=v7%>"></td></tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value=" 수 정 ">
                    </td>
                </tr>
            </table>
        </form>
        
    </section>
    <footer><h3>HRDKOREA Copyright@2023</h3></footer>
</body>
</html>