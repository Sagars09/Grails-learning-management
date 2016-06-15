package learning.management

class SessionController {

    def createUser() { }

    def saveUser() {
        println params
        params.age = params.age.toInteger()

        if(!session.count) {
            session.count = 0
        }

        session.count = session.count + 1

        User newUser = new User([myFirstName: params.firstName, myLastName: params.lastName, myEmail: params.email,
                                 myAge: params.age, id: session.count])
        session.lastUser = newUser
        if(!session.allUsers) {
            session.allUsers = []
        }

        session.allUsers.push(newUser)
        redirect(action: "showUser")
    }
    def showUser() { }

    def listUser() {
        [allCreatedUsers: session.allUsers]
    }
}
