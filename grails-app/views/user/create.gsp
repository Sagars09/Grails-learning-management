<%--
  Created by IntelliJ IDEA.
  User: ubuntu
  Date: 13/6/16
  Time: 11:54 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
    <h1>Sign-Up Form</h1>
    <form action="/learning-management/user/save">
        <input type="text" id="firstName" name="firstName" placeholder="FirstName">
        <input type="text" id="lastName" name="lastName" placeholder="LastName">
        <input type="text" id="email" name="email" placeholder="email">
        <input type="text" id="age" name="age" placeholder="Age">
        <button type="submit">Submit</button>
    </form>
</body>
</html>