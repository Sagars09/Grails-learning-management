<%--
  Created by Intel5liJ IDEA.
  User: ubuntu5
  Date: 11/6/16
  Time: 12:31 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
    Thanks for submitting. Your details are as follows:<br>

    <g:if test = "${recentlySavedUser.myFirstName}"></g:if>
    First Name: ${recentlySavedUser.myFirstName}<br>
    Last Name: ${recentlySavedUser.myLastName}<br>
    Email: ${recentlySavedUser.myEmail}<br>
    Password: ${recentlySavedUser.myPassword}<br>

</body>
</html>