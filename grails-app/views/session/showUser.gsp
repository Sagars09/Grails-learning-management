<%--
  Created by IntelliJ IDEA.
  User: ubuntu
  Date: 14/6/16
  Time: 7:02 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Show User</title>
    <meta name="layout" content="navbarLayout"/>
</head>

<body>
    <content tag="showHeading">
        <h3>Thanks for Submitting! Your Details are:</h3>
    </content>
    <content tag="showDetail">
        <dl class="list-group-item dl-horizontal">
            <dt class="">First Name:</dt>
            <dd>${session.lastUser.firstName}</dd>
            <dt>Last Name:</dt>
            <dd>${session.lastUser.lastName}</dd>
            <dt>Email:</dt>
            <dd>${session.lastUser.email}</dd>
            <dt>Age:</dt>
            <dd>${session.lastUser.age}</dd>
        </dl>
    </content>
</body>
</html>