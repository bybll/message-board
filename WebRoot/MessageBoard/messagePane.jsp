<%@ page contentType="text/html; charset=GB2312"%>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<html>
<head>
<title>提交成功</title>
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
		title="无标题";
	if(message==null)
		message="无信息";
	SimpleDateFormat matter=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	String time=matter.format(new Date());
	String s=name+"#"+title+"#"+time+"#"+message;
	sendMessage(s);
	out.print("您的信息已经提交！");
%>
<a href="submit.jsp">返回留言板</a>
<a href="showMessage.jsp">查看留言板</a>
</body>
</html>