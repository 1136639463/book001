<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>保存书籍种类</title>
</head>
<body>
   <div class="container">
    <div class="row">
        <div class="col-md-4 col-md-offset-3">
            <form action="save" method="post" class="form-horizontal">
                <div class="form-group">
                    <label for="exampleInputEmail1">书籍名称:</label>
                    <input type="text" class="form-control" id="exampleInputEmail1" placeholder="请输入书籍名称" name="name" size="20">
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">书籍作者:</label>
                    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="请输入书籍作者" name="author" size="20">
                </div>
                <div class="form-group">
                    <label for="exampleInputFile">出版社:</label>
                    <input type="text" class="form-control" id="exampleInputFile" name="publisher">
                </div>

                <div class="form-group">
                    <label for="exampleInputFile1">出版时间:</label>
                    <input type="date" class="form-control" id="exampleInputFile1" name="publishDate">
                </div>

                <div class="form-group">
                    <label for="bcid">书籍种类:</label>
                    <select id="bcid" name="cid" class="form-control">
                        <c:forEach items="${categorys }" var="c">
                           <option value="${c.id}">${c.name}</option>
                        </c:forEach>
                    </select><br>
                </div>

                <input type="submit" value="保存" class="btn btn-info">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="reset" value="重置" class="btn btn-success">
            </form>
        </div>
    </div>


</div>
</body>
</html>