<%@ page language="java"
         contentType="text/html; charset=UTF-8"   
         pageEncoding="UTF-8"%>
<%@ include file = "top.jsp" %>  

        <h2>예약 등록</h2>
        <form action="sub1exe.jsp" onsubmit="return ck(this)">
            <table>
                <tr><th>예약자이름</th> <td><input type="text" name="v1"></td></tr>
                <tr><th>투숙인원</th><td><input type="text" name="v2"></td></tr>
                <tr><th>방번호</th>
                    <td>
                        <input type="radio" name="v3" checked value="101">101
                        <input type="radio" name="v3" value="102">102
                        <input type="radio" name="v3" value="201">201
                        <input type="radio" name="v3" value="202">202
                        <input type="radio" name="v3" value="301">301
                    </td>
                </tr>

                <tr><th>입실일</th><td><input type="date" name="v4"></td></tr>
                <tr><th>퇴실일</th><td><input type="date" name="v5"></td></tr>

                <th colspan="2">
                    <input type="submit" value="입력">
                    <input type="button" value="조회">
                </th>
            </table>
        </form>
        
    </section>
    <footer><h3>HRDKOREA Copyright@2023</h3></footer>
<script>
    function ck(a) {
        if(a.v1.value == "") {
            alert("이름 미입력");
            a.v1.focus();
            return false
        }

        if(a.v2.value == "") {
            alert("인원 미입력");
            a.v2.focus();
            return false
        }

        if(a.v3.value == "") {
            alert("방번호 미입력");
            a.v3.focus();
            return false
        }

        if(a.v4.value == "") {
            alert("입실일 미입력");
            a.v4.focus();
            return false
        }

        if(a.v5.value == "") {
            alert("퇴실일 미입력");
            a.v5.focus();
            return false
        }
    }
</script>
</body>
</html>