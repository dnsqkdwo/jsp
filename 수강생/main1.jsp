<%@ page language="java"
         contentType="text/html; charset=UTF-8"   
         pageEncoding="UTF-8"%>
<%@ include file="top.jsp" %> 

        <h2>수강생 등록</h2>


            

        	<%
            String newno="";
        		try {
        			Class.forName ("oracle.jdbc.OracleDriver");
        			Connection con = DriverManager.getConnection ("jdbc:oracle:thin:@//localhost:1521/xe","system","1234");
        			Statement stmt = con.createStatement();
        			ResultSet rs = stmt.executeQuery("select max(sno)+1 from student");
        			rs.next();
                    newno = rs.getString(1);
        			stmt.close();
        			con.close();
        		} catch (Exception e) {
        			out.print(e);
        		}
        	%>

            

        <form action="main1exe.jsp" onsubmit="ck(this)">
            <table>
                <tr><th>학생번호 </th> <td><input type="text" name="v1" value="<%=newno%>" readonly></td></tr>
                <tr><th>학생이름 </th> <td><input type="text" name="v2"></td></tr>
                <tr><th>전화번호 </th> <td><input type="text" name="v3"></td></tr>
                <tr><th>생년월일 </th> <td><input type="text" name="v4"></td></tr>
                <tr><th>자격코드 </th> <td style="width: 400px;"><input type="radio" name="v5" checked value="100">정보처리기능사
                                        <input type="radio" name="v5" value="200">정보처리산업기사 <br>
                                        <input type="radio" name="v5" value="300">웹디자인기능사
                                        <input type="radio" name="v5" value="400">컴퓨터그래픽스기능사</td></tr>
                <tr><th>합격여부</th> <td>
                    <input type="radio" name="v6" value="1"> 필기
                    <input type="radio" name="v6" value="2"> 실기(최종합격)
                </td></tr>
                <tr><td colspan="2">
                    <input type="submit" name="v7" value="입력">
                    <input type="button" name="v7" value="조회">
                </td></tr>
            </table>
        </form>

    </section>
    <footer><h3>HRDKOREA Copyright@2023</h3></footer>

    <script>
        function ck(f) {
            if(f.v1.value=="") {
                alert('번호를 입력하세요');
                f.v1.focus();
                return false
            }

            if(f.v2.value=="") {
                alert('이름을 입력하세요');
                f.v2.focus();
                return false
            }

            if(f.v3.value=="") {
                alert('전화번호를 입력하세요');
                f.v3.focus();
                return false
            }

            if(f.v4.value=="") {
                alert('생년월일을 입력하세요');
                f.v4.focus();
                return false
            }

            if(f.v6.value=="") {
                alert('합격여부를 선택하세요');
                f.v6.focus();
                return false
            }
        }
    </script>
</body>
</html>