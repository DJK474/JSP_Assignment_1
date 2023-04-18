<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Arrays" %>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "x" uri = "http://java.sun.com/jsp/jstl/xml" %>

<!DOCTYPE html>
<html>
<head>
    <title>JSP - Assignment 1</title>
</head>
<body>

<c:import var = "assignmentInfo" url="http://localhost:8080/assignment.xml"/>

<x:parse xml = "${assignmentInfo}" var = "output"/>
<b>The title of the first book is</b>:
<x:out select = "$output/assignment/questions[1]/question" />
<br>

<b>The price of the second book</b>:
<x:out select = "$output/assignment/questions[2]/question" />


<%--

<%
    List<String> questions = new ArrayList<>(Arrays.asList("one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten"));
    List<String> answers = new ArrayList<>(Arrays.asList("true", "false", "true", "false", "true", "false", "true", "false", "true", "false"));
%>

<form>
    <%
        int i = 1;
        for (String question: questions) {
    %>
    <%= question%>
    <br><br/>
    True: <input type="radio" name="answer<%=i%>" value="True" required />
    False: <input type="radio" name="answer<%=i%>" value="False" required /> <br/><br/>
    <%

            i++;
        }
    %>
    <input type="submit" value="Submit" name="submit" /> <br/> <br/>
</form>

%>--

<%--<%

        ReadXml reader = new ReadXml();
        ArrayList<String> questions = reader.getQuestionList();
        ArrayList<String> answers = reader.getAnswerList();
        try{
            reader.buildDom();
        }
        catch(Exception e){
            e.printStackTrace();
        }

    %>--%>
<%--
<%
    ReadXmlDomParser reader = new ReadXmlDomParser("assignment.xml");
    ArrayList<String> questionList = reader.getQuestionList();
    ArrayList<String> answerList = reader.getAnswerList();
%>
--%>

<%--<%--%>


<%--    if(request.getParameter("submit") != null) {--%>
<%--        int j = 1;--%>
<%--        int score = 0;--%>
<%--        for (String answer: answers) {--%>
<%--             if(request.getParameter("answer"+j).toLowerCase().equals(answer)) {--%>
<%--                    score++;--%>
<%--            }--%>
<%--            j++;--%>
<%--        }--%>
<%--         out.println("Your score is: " + score);--%>
<%--    }--%>


<%--%>--%>

</body>
</html>