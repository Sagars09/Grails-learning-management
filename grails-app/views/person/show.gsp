<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Show User</title>
    <meta name="layout" content="navbarPerson"/>
</head>
<body>
<content tag="Heading">
    <h3>Thanks for Submitting! Your Details are:</h3>
</content>
<content tag="myMainContent">
    <dl class="list-group-item dl-horizontal">
        <dt class="">First Name:</dt>
        <dd>${recentUser.firstName}</dd>
        <dt>Last Name:</dt>
        <dd>${recentUser.lastName}</dd>
        <dt>Email:</dt>
        <dd>${recentUser.email}</dd>
        <dt>Age:</dt>
        <dd>${recentUser.age}</dd>
    </dl>
</content>
</body>
</html>