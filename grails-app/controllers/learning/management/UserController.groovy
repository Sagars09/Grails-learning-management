package learning.management

class UserController {


    def create() { }

    def save() {
        println params
        params.age = params.age.toInteger()
        User u1 = new User([myFirstName: params.firstName, myLastName: params.lastName, myEmail: params.email, myAge: params.age])
        session.myLastCreatedUser= u1
        if(!session.allUsers) {
            session.allUsers=[]
        }
        session.allUsers.push(u1)
        if(!session.count) {
            session.count = "0"
            session.count = session.count.toInteger()
        }
        session.count = ${session.count+1}
        println session.count

        redirect(action: "show")
    }

    def show() {
    }

    def list() {
        [allCreatedUsers: session.allUsers]
    }
}
