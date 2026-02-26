<%@ page language="java"
         contentType="text/html; charset=UTF-8"   
         pageEncoding="UTF-8"%>
<%@ include file = "top.jsp" %>   

	<%

        String newno = "";

		try {
			Class.forName ("oracle.jdbc.OracleDriver");
			Connection con = DriverManager.getConnection ("jdbc:oracle:thin:@//localhost:1521/xe","system","1234");
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select max(inno)+1 from institute2");
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
                <tr> <th>수강생번호</th> <td><input type = "text" name="v1" value="<%=newno%>" readonly></td> </tr>
                <tr> <th>수강생이름</th> <td><input type = "text" name="v2"></td> </tr>
                <tr> <th>전화번호</th> <td><input type = "text" name="v3"></td> </tr>
                <tr> <th>생년월일</th> <td><input type = "date" name="v4"></td> </tr>
                <tr> <th>등록코스</th> <td>
                     <input type="radio" name="v5" value="1" checked>시스템분석
                     <input type="radio" name="v5" value="2">전산개론
                     <input type="radio" name="v5" value="3">마케팅개론
                     <input type="radio" name="v5" value="4">사회학
                    </td> </tr>
                <tr> <th>등록상태</th>
                    <td>
                        <input type="radio" name="v6" value="1" checked> 수강
                        <input type="radio" name="v6" value="2"> 미수강
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
<script>
    function ck(a) {
        if(a.v1.value == "") {
            alert("번호 미입력");
            a.v1.focus();
            return false
        }

        if(a.v2.value == "") {
            alert("이름 미입력");
            a.v2.focus();
            return false
        }

        if(a.v3.value == "") {
            alert("전화번호 미입력");
            a.v3.focus();
            return false
        }

        if(a.v4.value == "") {
            alert("생년월일 미입력");
            a.v4.focus();
            return false
        }

        if(a.v5.value == "") {
            alert("등록코스 미입력");
            a.v5.focus();
            return false
        }

        if(a.v6.value == "") {
            alert("등록상태 미입력");
            a.v6.focus();
            return false
        }
    }
</script>
</body>
</html>