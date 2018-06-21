<%-- 
    Document   : login
    Created on : 2018-6-13, 16:54:41
    Author     : Qi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>登录界面</title>
        <link rel="stylesheet" href="css/pintuer.css">
        <script src="js/jquery.js"></script>
        <script src="js/pintuer.js"></script>
    </head>
    <body>
        <button class="button icon-navicon margin-small-bottom" data-target="#nav-bg3">
        </button>
        <div class="bg-blue bg-inverse radius nav-navicon" id="nav-bg1">
            <ul class="nav nav-inline nav-menu clearfix">
                <li>
                    <a href="index.jsp">首页</a>
                </li>
                <li>
                    <a href="#">返回主界面</a>
                </li> 
                <li>
                    <a href="#">管理员登录</a>
                </li> 
            </ul>
        </div>
        <div class="line">
            <div class="x2"></div>
            <div class="x4 img">
                <img src="images/background.png" />
            </div>
            <div class="x6">
                <div class="login">
                    <div class="title">
                        <ul>
                            <li>快速登录</li>
                            <li class="active">账号密码登录</li>
                        </ul>
                    </div>
                    <hr />
                    <div class="fbody">
                        <form method="post" class="form-auto">
                            <div class="form-group">
                                <div class="field field-icon">
                                    <input type="text" class="input" id="username" name="username" size="30" placeholder="手机/邮箱/账号" />
                                    <span class="icon icon-user"></span>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="field field-icon">
                                    <input type="password" class="input" id="password" name="password" size="30" placeholder="请输入密码" />
                                    <span class="icon icon-key"></span>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="field">
                                    <select class="input" name="userGrade" id="userGrade" style="width:240px;color:gray">
                                        <option>用户</option>
                                        <option>管理员</option>
                                    </select>
                                </div>
                            </div>

                            <div class="form-button">
                                <button class="button bg-sub" type="submit" id="btnSubmit">
                                    登录</button>
                            </div>
                        </form> 
                    </div>
                    <div class="ffooter">
                        <a href="#">忘记密码?</a>|
                        <a href="#">注册账号</a>
                    </div>
                </div>


            </div>
             <!--尾部开始-->
        <%@include file="WEB-INF/jspf/doc_footer.jspf" %>
        <!--尾部结束-->
        </div>
        <script type="text/javascript">
            $("#btnSubmit").click(function(){
                var username = $("#username").val();
                var password = $("#password").val();
                var userGrade = $("#userGrade").val();
                $.ajax({
                    type: 'POST',
                    url: url,
                    dataType: 'json',
                    data: {
                      "username":username,
                      "password":password,
                      "userGrade":userGrade
                    },
                    success: function(data){
                        
                    },
                    error: function(){
                        
                    }
                  });
            });
        </script>
        <style>
            .fbody{
                margin-top:30px;
            }
            .title{
                background: #f9fbfe;
                background-color: yellow;
            }
            .title ul li{
                list-style: none;
                margin: 0;
                padding: 20px 25px;
                color:gray;
                float: left;
            }
            .title ul li:hover{
                color: black;
            }
            .form-group,.form-button{
                margin: 10px 25px;
            }
            .button{
                width: 240px;
            }
            .login{
                margin-top: 80px;
                margin-bottom: 180px;
                width: 300px;
                height: 350px;
                border:1px solid #cccccc;
                border-radius:10px;
            }
            .img{
                margin-top: 30px;
            }
            .ffooter{
                float: right;
                font-size: 12px;
                color: blue;
                margin-right: 35px;
            }
            .ffooter a{
                color:#0ae;
                margin-top: 20px;
                padding-left: 10px;
                padding-right: 10px;
            }
            .ffooter a:hover{
                color: blue;
            }
          
        </style>
    </body>
</html>
