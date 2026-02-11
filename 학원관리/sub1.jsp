<%@ page language="java"
         contentType="text/html; charset=UTF-8"   
         pageEncoding="UTF-8"%>
<%@ include file = "top.jsp"%>   


        <%
            String newno = "";

	    	try {
	    		Class.forName ("oracle.jdbc.OracleDriver");
	    		Connection con = DriverManager.getConnection ("jdbc:oracle:thin:@//localhost:1521/xe","system","1234");
	    		Statement stmt = con.createStatement();
	    		ResultSet rs = stmt.executeQuery("select max(inno)+1 from institute");
	    		rs.next();
                newno = rs.getString(1);
	    		stmt.close();
	    		con.close();
	    	} catch (Exception e) {
	    		out.print(e);
	    	}
	    %>

        <h2>수강생등록</h2>
        <form action="sub1exe.jsp" onsubmit="return ck(this)">
            <table>
                <tr><th>수강생번호</th> <td><input type="text" readonly name="v1" value="<%=newno%>" ></td></tr>
                <tr><th>수강생이름</th> <td><input type="text"  name="v2"></td></tr>
                <tr><th>전화번호</th> <td><input type="text"  name="v3"></td></tr>
                <tr><th>생년월일</th> <td><input type="text"  name="v4"></td></tr>
                <tr><th>등록코스</th> <td>
                    <input type="radio"  name="v5" checked value="1">시스템분석
                    <input type="radio"  name="v5" value="2">전산개론
                    <input type="radio"  name="v5" value="3">마케팅개론
                </td></tr>
                <tr><th>등록상태</th> <td>
                    <input type="radio"  name="v6" checked value="1">수강
                    <input type="radio"  name="v6" value="2">미수강
                </td></tr>
                <tr><th colspan="2">
                    <input type="submit" value="입력">
                    <input type="button" value="조회" onclick="location.href='sub2.jsp'">
                </th></tr>



            </table>
        </form>
    </section>
    <footer><h3>HRDKOREA Copyright@2023</h3></footer>
    <script>

        function ck(n) {
            if(n.v1.value == "") {
                alert("수강생번호를 입력하시오");
                n.v1.focus();
                return false;
            }

            if(n.v2.value == "") {
                alert("수강생이름을 입력하시오");
                n.v2.focus();
                return false;
            }

            if(n.v3.value == "") {
                alert("전화번호를 입력하시오");
                n.v3.focus();
                return false;
            }

            if(n.v4.value == "") {
                alert("생년월일을 입력하시오");
                n.v4.focus();
                return false;
            }

            if(n.v5.value == "") {
                alert("등록코스를 입력하시오");
                n.v5.focus();
                return false;
            }

            if(n.v6.value == "") {
                alert("등록상태를 입력하시오");
                n.v6.focus();
                return false;
            }

        }
    </script>
</body>
</html>