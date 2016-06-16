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

        Person newUser = new Person([firstName: params.firstName, lastName: params.lastName, email: params.email,
                                 age: params.age, id: session.count])
        session.lastUser = newUser
        if(!session.allUsers) {
            session.allUsers = []
        }
        newUser.save()
        session.allUsers.push(newUser)

        redirect(action: "showUser")
    }
    def showUser() { }

    def listUser() {
        [allCreatedUsers: session.allUsers]
    }
}
