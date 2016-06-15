package learning.management

class FormController {

    def saveUser() {
        println "saveUser action executed"
        println params

        params.myPassword = params.myPassword.toInteger()
        User u = new User([myFirstName: params.fname, myLastName: params.lname, myEmail: params.mail, myPassword: params.pass])
        u.myTask()
        return [recentlySavedUser: u]
    }
}

