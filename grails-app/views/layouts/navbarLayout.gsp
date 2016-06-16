<html>
<head>
    <asset:stylesheet href="font-awesome/css/font-awesome.min.css"/>
    <asset:javascript src="bootstrapcdn.min.js"/>
    <asset:stylesheet href="bootstrap.min.css"/>
    <asset:stylesheet href="bootstrapcdn.min.css"/>
    <asset:javascript src="jquery.min.js"/>
    <asset:javascript src="bootstrap.min.js"/>
    <g:layoutHead/>
    <style>
        body {
            background-color: #eee;
        }
        .brand {
            color: #c0a16b;
        }
        .navbar-inverse .navbar-nav>.active>a {
            background-color: #c0a16b;
            border-radius: 15px;
        }
        .box {
            border: 2px solid #000000;
            height: 480px;
            padding: 0 15px;
            border-radius: 8px;
            overflow: scroll;
        }
        .page-header {
            border-bottom: 2px solid lightgrey;
        }
        .h3F {
            display: inline-block;
        }
        .footer-at {
            padding: 5px;
            margin-top: 51px;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-inverse">
        <div class="container">
            <div class="navbar-header">
                <a href="#" class="navbar-brand"> <p class="brand"><i class="fa fa-angellist"></i><b> Hang Out </b><i class="fa fa-beer"></i></p></a>
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-links" id="navbar-collapse-button">
                    <span class="sr-only">ToggleNavigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <div class="collapse navbar-collapse" id="navbar-links">
                <ul class="nav navbar-nav navbar-right">
                    <li class="${actionName.equals("createUser")  ? 'active' : ''}"><g:link controller="session" action="createUser">Create User</g:link></li>
                    <li class="${actionName.equals("showUser")  ? 'active' : ''}"><g:link controller="session" action="showUser">Show User</g:link> </li>
                    <li class="${actionName.equals("listUser") ? 'active' : ''}"><g:link controller="session" action="listUser">List Users</g:link> </li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="container">
        <div class="row">
            <div class="col-md-10 col-sm-10 col-xs-10">
                <div class="box">
                    <div class="page-header">
                        <g:applyLayout name="createUser">
                            <g:pageProperty name="page.createHeading"/>
                        </g:applyLayout>
                        <g:applyLayout name="showUser">
                            <g:pageProperty name="page.showHeading"/>
                        </g:applyLayout>
                        <g:applyLayout name="listUser">
                            <g:pageProperty name="page.listHeading"/>
                        </g:applyLayout>
                    </div>
                    <div>
                        <g:applyLayout name="createUser">
                            <g:pageProperty name="page.createForm"/>
                        </g:applyLayout>
                        <g:applyLayout name="showUser">
                            <g:pageProperty name="page.showDetail"/>
                        </g:applyLayout>
                        <g:applyLayout name="listUser">
                            <g:pageProperty name="page.listTable"/>
                        </g:applyLayout>
                    </div>
                </div>
            </div>
            <div class="col-md-2 col-sm-2 col-xs-2">
                <div class="box box-right">
                        <h3 class="h3F">D</h3>onate: If you use this site regularly and would like to help keep the site on the Internet, please consider donating a small sum to help pay for the hosting and bandwidth bill. There is no minimum donation, any sum is appreciated - click here to donate using PayPal. Thank you for your support.
                    Chrome Firefox Add-on NodeJS TeX Package Python Interface GTK Lipsum Rails Groovy Adobe Plugin
                    The standard Lorem Ipsum passage, used since the 1500s
                </div>
            </div>
        </div>
    </div>
    <footer class="bg-danger footer-at text-center">
            Website Created By: Sagar Jain.<br>
            Mail Me <i class="fa fa-at"></i> : jain.jains.sagar@gmail.com
    </footer>
</body>
</html>