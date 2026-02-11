<%@ page language="java"
         contentType="text/html; charset=UTF-8"   
         pageEncoding="UTF-8"%>
<%@ include file="top.jsp"%>


<%
String newno="";
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
<script>
    function ck(f){
        if(f.custname.value==""){
            alert('회원성명을 입력하세요.');
            f.custname.focus();
            return false
        }
        if(f.phone.value==""){
            alert('회원번호를 입력하세요.');
            f.phone.focus();
            return false
        }
        if(f.address.value==""){
            alert('회원주소을 입력하세요.');
            f.address.focus();
            return false
        }
        if(f.joindate.value==""){
            alert('가입일을 입력하세요.');
            f.joindate.focus();
            return false
        }
        if(f.grade.value==""){
            alert('고객등급을 입력하세요.');
            f.grade.focus();
            return false
        }
        if(f.city.value==""){
            alert('거주도시를 입력하세요.');
            f.city.focus();
            return false
        }
    }
</script>
        <br><br>
        <h2>회원등록</h2>
        <br><br>
        <form action="sub1exe.jsp" onsubmit="return ck(this)">
            <table class="reg">
                <tr><th>회원번호</th><td><input type="text" name="custno" value="<%=newno%>" readonly></td></tr>
                <tr><th>회원성명</th><td><input type="text" name="custname"> 예)홍길동</td></tr>
                <tr><th>회원전화번호</th><td><input type="text" name="phone"> 예)010-1234-5678</td></tr>
                <tr><th>회원주소</th><td><input type="text" name="address"></td></tr>
                <tr><th>가입일</th><td><input type="date" name="joindate"> 예)2025-01-01</td></tr>
                <tr><th>고객등급</th><td><select name="grade">
                    <option value="">등급선택</option>
                    <option value="A">VIP</option>
                    <option value="B">일반</option>
                    <option value="C">직원</option>
                </select> 예)VIP</td></tr>
                <tr><th>거주도시</th><td><input type="text" name="city"> 예)01</td></tr>
                <tr><th colspan="2">
                    <input type="submit" value="  등 록  ">
                    <input type="button" value="  조 회  ">
                </th></tr>
            </table>
        </form>
    </section>
    <footer><h2>HRDKOREA Copyright@2023</h2></footer>
</body>
</html>