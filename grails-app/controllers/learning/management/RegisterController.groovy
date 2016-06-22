package learning.management

class RegisterController {

    def index() {
        [errUser: new Expense()]
    }

    def save() {
        println params

        Map m = [firstName: params.firstName, lastName: params.lastName, email: params.email, password: params.password]
        Expense newUser = new Expense(m)
        newUser.save()
        println newUser.errors
        if(newUser.hasErrors()) {
            render (view: "index", model:[errUser: newUser])
            return
        }
        redirect(action: "show", id: newUser.id)
    }

    def show() {
        println "show"
        Expense myUser = Expense.get(params.id)
        return [myRegUser: myUser]
    }
}
