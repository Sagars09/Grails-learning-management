<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Show User</title>
    <meta name="layout" content="navbarPerson"/>
    <style>
        .form {
            padding-top: 15px;
        }
    </style>
</head>
<body>
<content tag="heading">
    <h3>Thanks for Submitting! Your Details are:</h3>
</content>
<content tag="myMainContent">
    <dl class="list-group-item dl-horizontal">
        <dt>First Name:</dt>
        <dd>${recentUser.firstName}</dd>
        <dt>Last Name:</dt>
        <dd>${recentUser.lastName}</dd>
        <dt>Email:</dt>
        <dd>${recentUser.email}</dd>
        <dt>Age:</dt>
        <dd>${recentUser.age}</dd>
    </dl>

    <g:form controller="person" action="list" class="form">
        <button type="submit" class="btn btn-primary btn-block">Go Back to List</button>
    </g:form>
</content>
</body>
</html>