package learning.management

class HelloController {

    def index() {
        render ("Hello this is me.")
    }

    def signup() {
    }

    def saveUser() {
        println (params)
        render ("Thanks for signing up!")
    }
}
