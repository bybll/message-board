<%@ page contentType="text/html;charset=GB2312"%>
<%@ page import="java.util.*"%>
<html>
<head>
<title>���԰�</title>
</head>
<body>
<%
	Vector<String> v=(Vector)application.getAttribute("Mess");
	out.print("<table border=2>");
	out.print("<tr>");
	out.print("<td>"+"����������"+"</td>");
	out.print("<td>"+"���Ա���"+"</td>");
	out.print("<td>"+"����ʱ��"+"</td>");
	out.print("<td>"+"��������"+"</td>");
	out.print("</tr>");
	for(int i=0;i<v.size();i++){
		String message=v.elementAt(i);
		byte bb[]=message.getBytes("iso-8859-1");
		message=new String(bb);
		String a[]=message.split("#");
		out.print("<tr>");
		int number=a.length-1;
		for(int k=0;k<=number;k++){
			if(k<number)
				out.print("<td>"+a[k]+"</td>");
			else
				out.print("<td><textarea rows=3 cols=12>"+a[k]+"</textarea></td>");
		}
		out.print("</tr>");
	}
	out.print("</table>");
%>
<a herf="submit.jsp">�������԰�</a>
</body>
</html>