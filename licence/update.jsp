<%@ page language="java"
         contentType="text/html; charset=UTF-8"   
         pageEncoding="UTF-8"%>
<%@ include file="top.jsp" %>  

	<%

        String sno = request.getParameter("sno");
        String v2 = ""; 
        String v3 = ""; 
        String v4 = ""; 
        String v5 = ""; 
        String v6 = ""; 

		try {
			Class.forName ("oracle.jdbc.OracleDriver");
			Connection con = DriverManager.getConnection ("jdbc:oracle:thin:@//localhost:1521/xe","system","1234");
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select * from student where sno = '"+sno+"'");
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

        <h2>수정</h2>
        <form action="updateExe.jsp">
            <table>
                <tr><th>학생번호</th><td><input type="text" name="v1" value="<%=sno%>"></td></tr>
                <tr><th>학생이름</th><td><input type="text" name="v2" value="<%=v2%>"></td></tr>
                <tr><th>전화번호</th><td><input type="text" name="v3" value="<%=v3%>"></td></tr>
                <tr><th>생년월일</th><td><input type="date" name="v4" value="<%=v4%>"></td></tr>
                <tr><th>자격코드</th> 
                    <td>
                        <input type="radio" name="v5" value="100" <%=v5.equals("100") ? "checked" : ""%>>정보처리기능사
                        <input type="radio" name="v5" value="200" <%=v5.equals("200") ? "checked" : ""%>>정보처리산업기사
                        <input type="radio" name="v5" value="300" <%=v5.equals("300") ? "checked" : ""%>>웹디자인기능사
                        <input type="radio" name="v5" value="400" <%=v5.equals("400") ? "checked" : ""%>>컴퓨터그래픽스기능사
                    </td>
                </tr>
                <tr><th>합격여부</th>
                    <td>
                        <input type="radio" name="v6" value="1" <%=v6.equals("1") ? "checked" : ""%>>필기
                        <input type="radio" name="v6" value="2" <%=v6.equals("2") ? "checked" : ""%>>실기(최종합격)
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="입력">
                        <a href="sub2.jsp"><input type="button" value="조회"></a>
                    </td>
                </tr>
            </table>
        </form>
        
    </section>
    <footer><h3>HRDKOREA Copyright@2023</h3></footer>
</body>
</html>