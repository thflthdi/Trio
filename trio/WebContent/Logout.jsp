<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>logout</title>
</head>
<body>
	<%
    // �α׾ƿ� ��ư�� ������ ���ԵǴ� ���ε�
    // session�� ������ؼ� ����� ������ ������
    session.invalidate();
	out.println("<script>");
	out.println("alert('�α׾ƿ� �Ǿ����ϴ�.')");
	out.println("location.href='index.jsp'");
	out.println("</script>");
    // �׸��� �ٽ� index.jsp�� ���ư��� �Ѵ�
     %>
   
</body>
</html>