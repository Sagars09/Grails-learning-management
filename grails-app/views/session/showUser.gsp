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
    <asset:javascript src="jquery.min.js"/>
    <asset:javascript src="bootstrap.min.js"/>
    <asset:javascript src="bootstrapcdn.min.js"/>
    <asset:stylesheet href="bootstrap.min.css"/>
    <asset:stylesheet href="bootstrapcdn.min.css"/>
</head>

<body>
    <g:render template="/templates/myNavbar" model="[myCurrentPage: 'show']"></g:render>
    <div class="container">
        <h3>Thanks for Submitting! Your Details are:</h3>
        <hr>
        <dl class="list-group-item dl-horizontal">
            <dt class="">First Name:</dt>
            <dd>${session.lastUser.myFirstName}</dd>
            <dt>Last Name:</dt>
            <dd>${session.lastUser.myLastName}</dd>
            <dt>Email:</dt>
            <dd>${session.lastUser.myEmail}</dd>
            <dt>Age:</dt>
            <dd>${session.lastUser.myAge}</dd>
        </dl>
    </div>
</body>
</html>