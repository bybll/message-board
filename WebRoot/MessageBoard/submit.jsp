<%@ page contentType="text/html; charset=GB2312"%>
<html>
<head>
<title>������Ϣ</title>
</head>
<body>
<form action="messagePane.jsp" method="post" name="form">
<p>�����������֣�<input type="text" name="peopleName">
<br>
<p>�������Եı��⣺<input  type="text" name="title">
<br>
<p>�����������ԣ�</p>
<textarea name="message" rows="10" cols="36" wrap="hard">
</textarea>
<br>
<input name="submit" value="�ύ��Ϣ" type="submit">
</form>
<form action="showMessage.jsp" method="post" name="form1">
<input type="submit" name="submit" value="�鿴���԰�">
</form>
</body>
</html>