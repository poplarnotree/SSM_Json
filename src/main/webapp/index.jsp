<%--
  Created by IntelliJ IDEA.
  User: yang
  Date: 2017/7/27
  Time: 10:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <title>测试接收JSON格式的数据</title>
    <script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="js/json2.js"></script>
    <script>
        $(document).ready(function(){

            testRequestBody();
        });
        function testRequestBody(){
            $.ajax({
                url:"${pageContext.request.contextPath}/json/testRequestBody",//发送请求的url
                dataType:"json", //预期服务器返回的数据类型
                type:"post",  //请求方式POST或GET
                contentType:"application/json",//发送信息至服务器时的内容编码格式
                //发送到服务器的数据
                data:JSON.stringify({id:1,name:"Spring MVC企业应用实战"}),
                async:true,   //默认设置下，所有请求均为异步请求。如果设置为false，则发送同步请求
                //请求成功后的回调函数
                success:function(data){
                    console.log(data);
                    $("#id").html(data.id);
                    $("#name").html(data.name);
                    $("#author").html(data.author);
                },
                error:function(){
                    alert("数据发送失败");
                }
            });
        }
    </script>
</head>
<body>


    编号:<span id = "id"></span><br>
    书名:<span id = "name"></span><br>
    作者:<span id = "author"></span><br>

</body>
</html>

