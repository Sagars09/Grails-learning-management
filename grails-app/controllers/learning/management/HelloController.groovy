package learning.management

class HelloController {

    def index() {
        render ("Hello this is me." + session.name)
    }

    def signup() {

    }

    def register() {
        render(view: "signup")
    }

    def saveUser() {
        println (params)
        render ("Thanks for signing up!")
    }
}
