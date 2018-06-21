<%-- 
    Document   : insert
    Created on : 2018-5-18, 18:39:10
    Author     : Administrator
--%>
<!--www.imooc.com-->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="mytag" uri="/WEB-INF/MyTag" %>
<!DOCTYPE html>
<html lang="zh-cn">
    <head>
        <title>拼图前端框架HTML模版</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/pintuer.css">
        <script src="js/jquery.js"></script>
        <script src="js/pintuer.js"></script>
    </head>
    <body>
        <!--首部开始-->
        <!--快捷键alt+/-->
        <!--首部结束-->
        <!--内容开始-->
        <%@include file="WEB-INF/jspf/doc_header.jspf" %>
        <div class="container padding-big-top padding-big-bottom">
            <div class="line">
                <!--左边部分-->
                <%@include file="WEB-INF/jspf/doc_lefter.jspf" %>
                <!--<div class=""></div>-->
                <!--右边部分-->
                <div class="xl12 xs8 xs1-move xm8 xm1-move xb8 xb1-move">
                    <form method="post" action="InsertServlet" enctype="multipart/from-data">
                        <div class="form-group">
                            <div class="label">
                                <label for="sno">
                                    学号</label>
                            </div>
                            <div class="field">
                                <input type="text" class="input" id="sno" name="sno" size="50" placeholder="请输入您的学号" data-validate="required:必填,length#==7:长度为7,ajax#CheckSno?sno=:用户已注册"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="label">
                                <label for="sname">
                                    姓名</label>
                            </div>
                            <div class="field">
                                <input type="text" class="input" id="sname" name="sname" size="50" placeholder="请输入您的名字" data-validate="required:必填" />
                            </div>
                        </div>
                         <div class="form-group">
                            <div class="label">
                                <label for="sage">
                                    年龄</label>
                            </div>
                            <div class="field">
                                <input type="text" class="input" id="sage" name="sage" size="50" placeholder="请输入您的年龄" data-validate="required:必填" />
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="label">
                                <label for="ssex">性别</label>
                            </div>
                            <div class="field">
                                <div class="button-group radio">
                                    <label class="button active">
                                        <input name="ssex" value="男" checked="checked" type="radio"><span class="icon icon-male"></span> 男
                                    </label>
                                    <label class="button">
                                        <input name="ssex" value="女" type="radio"><span class="icon icon-female"></span> 女
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="label">
                                <label for="photo">
                                    头像</label>
                            </div>
                            <div class="field">
                                <a class="button input-file" href="javascript:void(0);">+ 浏览文件<input size="100" type="file" id="photo" name="photo" data-validate="regexp#.+.(jpg|jpeg|png|gif)$:只能上传jpg|gif|png格式文件"/></a>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="label">
                                <label for="sdept">
                                    专业</label>
                            </div>
                            <div class="field">
                                <mytag:departlisttag/>
<!--                                <select class="input" name="sdept">
                                    <option>电气学院</option>
                                    <option>机械学院</option>
                                    <option>管理学院</option>
                                </select>-->
                            </div>
                        </div>
                        <div class="form-button">
                            <button class="button" type="submit">
                                添加</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!--内容结束-->
        <!--尾部开始-->
        <%@include file="WEB-INF/jspf/doc_footer.jspf" %>
        <!--尾部结束-->

    </body>
</html>
