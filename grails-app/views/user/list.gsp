<html>
<head>
    <asset:stylesheet href="bootstrap.min.css"/>
    <asset:javascript src="jquery.min.js"/>
    <asset:javascript src="bootstrap.min.js"/>
</head>
<body>
Session Details are: <br>

<table>
    <thead>
        <th>S.No.</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Email</th>
        <th>Age</th>
    </thead>
    <g:each in="${allCreatedUsers}" var="users">
        <tr>
            <td>${session.count}</td>
            <td>${users.myFirstName}</td>
            <td>${users.myLastName}</td>
            <td>${users.myEmail}</td>
            <td>${users.myAge}</td>
        </tr>
    </g:each>
</body>
</table>
</html>