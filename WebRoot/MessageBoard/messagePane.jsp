<%@ page contentType="text/html; charset=GB2312"%>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<html>
<head>
<title>�ύ�ɹ�</title>
</head>
<body>
<%! 
	Vector<String> v=new Vector<String>();
	int i=0;
	ServletContext application;
	synchronized void sendMessage(String s){
		application=getServletContext();
		v.add(s);
		application.setAttribute("Mess",v);
	}
%>
<%
	String name=request.getParameter("peopleName");
	String title=request.getParameter("title");
	String message=request.getParameter("message");
	if(name==null)
		name="guest"+(int)(Math.random()*10000);
	if(title==null)
		title="�ޱ���";
	if(message==null)
		message="����Ϣ";
	SimpleDateFormat matter=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	String time=matter.format(new Date());
	String s=name+"#"+title+"#"+time+"#"+message;
	sendMessage(s);
	out.print("������Ϣ�Ѿ��ύ��");
%>
<a href="submit.jsp">�������԰�</a>
<a href="showMessage.jsp">�鿴���԰�</a>
</body>
</html>