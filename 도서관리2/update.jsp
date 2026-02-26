<%@ page language="java"
         contentType="text/html; charset=UTF-8"   
         pageEncoding="UTF-8"%>
<%@ include file="top.jsp" %>    


	<%

        String lentno = request.getParameter("lentno");
        String v2 = "";
        String v3 = "";
        String v4 = "";
        String v5 = "";
        String v6 = "";

		try {
			Class.forName ("oracle.jdbc.OracleDriver");
			Connection con = DriverManager.getConnection ("jdbc:oracle:thin:@//localhost:1521/xe","system","1234");
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select * from reservation_tbl where lentno = '"+lentno+"'");
			while(rs.next()) {
				v2 = rs.getString(2);
                v3 = rs.getString(3);
                v4 = rs.getString(4).substring(0, 10);
                v5 = rs.getString(5) == null ? "" : rs.getString(5).substring(0, 10);
                v6 = rs.getString(6);
			}
			stmt.close();
			con.close();
		} catch (Exception e) {
			out.print(e);
		}
	%>

    
        <h2>도서 대출 수정</h2>
        <form action="updateExe.jsp">
            <table>
                <tr><th>대출번호</th><td><input type = "text" name="v1" value="<%=lentno%>"></td></tr>
                <tr><th>고객성명</th><td><input type = "text" name="v2" value="<%=v2%>"></td></tr>
                <tr><th>도서코드</th><td>
                    <select name="v3">
                        <option value="101" <%=v3.equals("101") ? "selected" : ""%>>101(시스템분석)</option>
                        <option value="102" <%=v3.equals("102") ? "selected" : ""%>>102(전산개론)</option>
                        <option value="103" <%=v3.equals("103") ? "selected" : ""%>>103(마케팅개론)</option>
                        <option value="105" <%=v3.equals("105") ? "selected" : ""%>>105(사회학)</option>
                        <option value="201" <%=v3.equals("201") ? "selected" : ""%>>201(역사학)</option>
                        <option value="301" <%=v3.equals("301") ? "selected" : ""%>>301(전산영어)</option>
                    </select>
                </td></tr>
                <tr><th>대출일자</th><td><input type = "date" name="v4" value="<%=v4%>"></td></tr>
                <tr><th>반납일자</th><td><input type = "date" name="v5" value="<%=v5%>"></td></tr>
                <tr>
                    <th>대출상태</th>
                    <td>
                        <input type="radio" name="v6" value="1" <%=v6.equals("1") ? "checked" : ""%>>대출
                        <input type="radio" name="v6" value="2" <%=v6.equals("2") ? "checked" : ""%>>반납
                    </td> 
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" value="입력">
                    <a href="sub2.jsp"><input type="button" value="조회"></a></td>
                </tr>
            </table>
        </form>
        
    </section>
    <footer><h3>HRDKOREA Copyright@2023</h3></footer>
</body>
</html>