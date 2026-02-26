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
			ResultSet rs = stmt.executeQuery("select max(lentno)+1 from reservation_tbl");
			rs.next();
            newno = rs.getString(1);
			stmt.close();
			con.close();
		} catch (Exception e) {
			out.print(e);
		}
	%>

    
        <h2>도서 대출 등록</h2>
        <form action="sub1exe.jsp" onsubmit="return ck(this)">
            <table>
                <tr><th>대출번호</th><td><input type = "text" name="v1" value="<%=newno%>"></td></tr>
                <tr><th>고객성명</th><td><input type = "text" name="v2"></td></tr>
                <tr><th>도서코드</th><td>
                    <select name="v3">
                        <option value="101">101(시스템분석)</option>
                        <option value="102">102(전산개론)</option>
                        <option value="103">103(마케팅개론)</option>
                        <option value="105">105(사회학)</option>
                        <option value="201">201(역사학)</option>
                        <option value="301">301(전산영어)</option>
                    </select>
                </td></tr>
                <tr><th>대출일자</th><td><input type = "date" name="v4"></td></tr>
                <tr><th>반납일자</th><td><input type = "date" name="v5"></td></tr>
                <tr>
                    <th>대출상태</th>
                    <td>
                        <input type="radio" name="v6" value="1" checked>대출
                        <input type="radio" name="v6" value="2">반납
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
<script>
    function ck(a) {
        if(a.v1.value == "") {
            alert("번호 미입력");
            a.v1.focus();
            return false;
        }

        if(a.v2.value == "") {
            alert("이름 미입력");
            a.v2.focus();
            return false;
        }

        if(a.v3.value == "") {
            alert("코드 미입력");
            a.v3.focus();
            return false;
        }

        if(a.v4.value == "") {
            alert("대출일 미입력");
            a.v4.focus();
            return false;
        }

        if(a.v5.value == "") {
            alert("반납일 미입력");
            a.v5.focus();
            return false;
        }

        if(a.v6.value == "") {
            alert("상태 미입력");
            a.v6.focus();
            return false;
        }
    }
</script>
</body>
</html>