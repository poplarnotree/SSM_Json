<%--
  Created by IntelliJ IDEA.
  User: yang
  Date: 2017/7/28
  Time: 11:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="../../js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="../../js/json2.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            testResponseBody();
        });
        function testResponseBody() {
            $.post("/json/testRequestBody1",null,function (data) {
                $.each(data, function () {
                    var tr = $("<tr align='center'/>");
                    $("<td/>").html(this.id).appendTo(tr);
                    $("<td/>").html(this.name).appendTo(tr);
                    $("<td/>").html(this.author).appendTo(tr);
                    $("#booktable").append(tr);
                })
            },"json");
        }
    </script>
</head>
<body>
    <table id="booktable" border="1" style="border-collapse: collapse;">
        <tr align="center">
            <th>ID</th>
            <th>name</th>
            <th>author</th>
        </tr>
    </table>
</body>
</html>
