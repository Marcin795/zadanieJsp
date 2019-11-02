<%@ page language="java" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Lab3 - Bean w JSP</title>
<%--    <meta http-equiv="refresh" content="5; url=notindex.html">--%>
</head>
    <body>
        <jsp:useBean id="dBean" class="lab3.DataBean" scope="session" />
        <jsp:setProperty name="dBean" property="przykladowaDana" value="100" />
        Zapisałem dane do Beana.<br>
        Wyprowadzam dane z Beana:
        <i><jsp:getProperty name="dBean" property="przykladowaDana" /></i><br>
        <i><%= dBean.Dopisz("zł")%></i>
        <%= request.getParameter("hehe") %>
        <jsp:setProperty name="dBean" property="przykladowaDana" param="hehe" />
        <jsp:getProperty name="dBean" property="przykladowaDana"/>
    </body>
</html>