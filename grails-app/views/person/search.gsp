<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Search User</title>
    <meta name="layout" content="navbarPerson" />
</head>

<body>
<content tag="heading">
    <h2>Search Here</h2>
</content>

<content tag="myMainContent">
    <g:form name="split-match" controller="person" action="result" method="post">
        <div class="form-group">
            <g:textField name="name" class="form-control"
                         placeholder="Enter name (either first or last or both)"></g:textField>
            <br>
            <g:textField name="email" class="form-control"
                         placeholder="Enter part of email (or full email)"></g:textField>
            <br>
            <g:textField name="age" class="form-control" placeholder="enter age"></g:textField>
            <br>
            <g:submitButton name="submit" class="btn btn-primary btn-block"></g:submitButton>
        </div>
    </g:form>
    <hr>
</content>
</body>
</html>