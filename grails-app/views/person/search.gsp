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
            <g:submitButton name="submit" class="btn btn-primary btn-block" value="Submit"></g:submitButton>
            <hr class="page-header">
            <g:textField name="emailSel" class="form-control" 
                         placeholder="Enter part of email (or full email)"></g:textField>
            <br>
            <g:textField name="ageSel" class="form-control" placeholder="Enter age"></g:textField>
            <br>
            <g:select name="select" from="${['Exact','Greater','Lesser']}"
                      class="form-control"></g:select>
            <br><br>
            <g:submitButton name="submitSel" class="btn btn-primary btn-block" value="Submit"></g:submitButton>
        </div>
    </g:form>
</content>
</body>
</html>