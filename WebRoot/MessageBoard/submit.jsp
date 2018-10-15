<%@ page contentType="text/html; charset=GB2312"%>
<html>
<head>
<title>输入信息</title>
</head>
<body>
<form action="messagePane.jsp" method="post" name="form">
<p>输入您的名字：<input type="text" name="peopleName">
<br>
<p>输入留言的标题：<input  type="text" name="title">
<br>
<p>输入您的留言：</p>
<textarea name="message" rows="10" cols="36" wrap="hard">
</textarea>
<br>
<input name="submit" value="提交信息" type="submit">
</form>
<form action="showMessage.jsp" method="post" name="form1">
<input type="submit" name="submit" value="查看留言板">
</form>
</body>
</html>