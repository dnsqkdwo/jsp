<%@ page language="java"
         contentType="text/html; charset=UTF-8"   
         pageEncoding="UTF-8"%>
<%@ include file="top.jsp" %>  


    <%
        String newno = "";

		try {
			Class.forName ("oracle.jdbc.OracleDriver");
			Connection con = DriverManager.getConnection ("jdbc:oracle:thin:@//localhost:1521/xe","system","1234");
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select max(custno)+1 from member_02");
			rs.next();
            newno = rs.getString(1);
			stmt.close();
			con.close();
		} catch (Exception e) {
			out.print(e);
		}
	%>


    <section>
        <h2>회원등록</h2>
        <form action="sub1exe.jsp" onsubmit="ck(this)">
            <table>
                <tr><th>회원번호</th><td><input type="text" name="v1" value="<%=newno%>" readonly ></td></tr>
                <tr><th>회원성명</th><td><input type="text" name="v2"></td></tr>
                <tr><th>회원전화</th><td><input type="text" name="v3"></td></tr>
                <tr><th>회원주소</th><td><input type="text" name="v4"></td></tr>
                <tr><th>가입일자</th><td><input type="text" name="v5"></td></tr>
                <tr><th>고객등급</th><td><input type="text" name="v6"></td></tr>
                <tr><th>도시코드</th><td><input type="text" name="v7"></td></tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value=" 등 록 ">
                        <input type="button" value=" 조 회 ">
                    </td>
                </tr>
            </table>
        </form>
        
    </section>
    <footer><h3>HRDKOREA Copyright@2023</h3></footer>
<script>
    function ck(a) {
        if(a.v1.value == "") {
            alert("회원번호 미입력");
            a.v1.focus();
            return false
        }

        if(a.v2.value == 0) {
            alert("회원성명 미입력");
            a.v2.focus();
            return false
        }
        if(a.v3.value == 0) {
            alert("회원전화 미입력");
            a.v3.focus();
            return false
        }
        if(a.v4.value == 0) {
            alert("회원주소 미입력");
            a.v4.focus();
            return false
        }
        if(a.v5.value == 0) {
            alert("가입일자 미입력");
            a.v5.focus();
            return false
        }
        if(a.v6.value == 0) {
            alert("고객등급 미입력");
            a.v6.focus();
            return false
        }
        if(a.v7.value == 0) {
            alert("도시코드 미입력");
            a.v7.focus();
            return false
        }
    }
</script>
</body>
</html>