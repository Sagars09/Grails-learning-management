<%--
  Created by IntelliJ IDEA.
  User: ubuntu
  Date: 22/6/16
  Time: 10:21 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="navbarExpense">
</head>

<body>
    <content tag="heading">
        <h3>Thanks for Registering with Us! Your Details are:</h3>
    </content>
    <content tag="mainContent">
        <g:each in="${myRegUser}" var="user" id="${user.id}">
            <dl class="list-group-item dl-horizontal">
                <dt class="">First Name:</dt>
                <dd>${user.firstName}</dd>
                <dt>Last Name:</dt>
                <dd>${user.lastName}</dd>
                <dt>Email:</dt>
                <dd>${user.email}</dd>
            </dl>
        </g:each>
    </content>
</body>
</html>