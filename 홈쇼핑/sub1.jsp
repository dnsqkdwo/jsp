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
        <h2>홈쇼핑 회원 등록</h2>
        <form action="sub1exe.jsp" onsubmit="return ck(this)">
            <table>
                <tr><th>회원번호</th><td><input type="text" name="v1" readonly value="<%=newno%>" </td></tr>
                <tr><th>회원성명</th><td><input type="text" name="v2"></td></tr>
                <tr><th>회원전화</th><td><input type="text" name="v3"></td></tr>
                <tr><th>회원주소</th><td><input type="text" name="v4"></td></tr>
                <tr><th>가입일자</th><td><input type="text" name="v5"></td></tr>
                <tr><th>고객등급</th><td><input type="text" name="v6"></td></tr>
                <tr><th>도시코드</th><td><input type="text" name="v7"></td></tr>
                <tr><td colspan="2">
                    <input type="submit" name="v8" value=" 등 록 ">
                    <input type="button" name="v8" value=" 조 회 ">
                </td></tr>
            </table>
        </form>
        
    </section>
    <footer><h3>HRDKOREA Copyright@2023</h3></footer>

    <script>

        function ck(n) {
            if(n.v1.value=="") {
                alert('회원번호를 입력하세요');
                n.v1.focus();
                return false
            }
            if(n.v2.value == "") {
                alert("회원성명을 입력하시오");
                n.v2.focus();
                return false
            }
            if(n.v3.value == "") {
                alert("회원전화를 입력하시오");
                n.v3.focus();
                return false
            }
            if(n.v4.value == "") {
                alert("회원주소를 입력하시오");
                n.v4.focus();
                return false
            }
            if(n.v5.value == "") {
                alert("가입일자를 입력하시오");
                n.v5.focus();
                return false
            }
            if(n.v6.value == "") {
                alert("고객등급을 입력하시오");
                n.v6.focus();
                return false
            }
            if(n.v7.value == "") {
                alert("도시코드를 입력하시오");
                n.v7.focus();
                return false
            }
        }

    </script>
</body>
</html>