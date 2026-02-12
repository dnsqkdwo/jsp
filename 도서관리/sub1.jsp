<%@ page language="java"
         contentType="text/html; charset=UTF-8"   
         pageEncoding="UTF-8"%>
<%@ include file = "top.jsp" %>    

        <h2>도서대출등록</h2>

        <%

            String newno = "";

	    	try {
	    		Class.forName ("oracle.jdbc.OracleDriver");
	    		Connection con = DriverManager.getConnection ("jdbc:oracle:thin:@//localhost:1521/xe","system","1234");
	    		Statement stmt = con.createStatement();
	    		ResultSet rs = stmt.executeQuery("select max(lentno)+1 from reservation");
	    		rs.next();
                newno = rs.getString(1);
	    		stmt.close();
	    		con.close();
	    	} catch (Exception e) {
	    		out.print(e);
	    	}
	    %>

        <form action="sub1exe.jsp" onsubmit="return ck(this)">
            <table>
                <tr><th>대출번호</th><td><input type="text" name="v1" readonly value="<%=newno%>"></td></tr>
                <tr><th>고객성명</th><td><input type="text" name="v2"></td></tr>
                <tr><th>도서코드</th><td><input type="text" name="v3"></td></tr>
                <tr><th>대출일자</th><td><input type="text" name="v4"></td></tr>
                <tr><th>반납일자</th><td><input type="text" name="v5"></td></tr>
                <tr><th>대출상태</th>
                    <td>
                        <input type="radio" name="v6" value="1" checked>대출
                        <input type="radio" name="v6" value="2">반납
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
    <script>
        function ck(n) {
            if(n.v1.value == "") {
                alert("대출번호 미입력");
                n.v1.focus();
                return false;
            }

            if(n.v2.value == "") {
                alert("고객성명 미입력");
                n.v2.focus();
                return false;
            }

            if(n.v3.value == "") {
                alert("도서코드 미입력");
                n.v3.focus();
                return false;
            }

            if(n.v4.value == "") {
                alert("대출일자 미입력");
                n.v4.focus();
                return false;
            }

            if(n.v5.value != "" && n.v6.value == "1") {
                alert("대출 선택시 반납일자 미입력");
                n.v5.focus();
                return false;
            }

            if(n.v6.value == "2" && n.v5.value == "") {
                alert("반납일자 미입력");
                n.v5.focus();
                return false;
            }

            if(n.v6.value == "") {
                alert("대출상태 미선택");
                n.v6.focus();
                return false;
            }

        }
    </script>
</body>
</html>