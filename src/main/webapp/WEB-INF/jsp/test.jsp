
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <%-- <link rel="stylesheet"  href="${pageContext.request.contextPath}/resources/css/bootstrap.css">--%>
    <link rel="stylesheet"  href="../css/bootstrap.min.css">
    <script src="/resources/js/jquery-3.3.1.min.js"></script>
    <style>
        body{
            background: url("/resources/img/body.jpg") no-repeat;
            background-size: cover;

        }
    </style>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-3 col-md-offset-5">
            <form class="form-horizontal">
                <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label">账号</label>
                    <div class="col-sm-8">
                        <input type="text" name="username" class="form-control" id="inputEmail3" placeholder="请输入账号">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPassword3" class="col-sm-2 control-label">密码</label>
                    <div class="col-sm-8">
                        <input type="password" name="password" class="form-control" id="inputPassword3" placeholder="请输入密码">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox"> 记住密码
                            </label>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-8 col-md-offset-2">
                        <button type="submit" class="btn btn-primary" onclick="regist();"  style="width: 100%">注册</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<script>
    function regist() {
        var userName=$("#inputEmail3").val();
        var passWord=$("#inputPassword3").val();
        $.ajax({
            type : "POST",
            url : "/user/regist",
            data : {
                username :userName,
                password : passWord
            },
            dataType : 'json',
            success : function(data) {
                if ("success" == data) {
                    window.location.href = "show";
                }
            }
        })




    }
</script>
</body>
</html>