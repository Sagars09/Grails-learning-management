package learning.management

class PersonController {

    def create() { }

    def save() {
        println params
        params.age = params.age.toInteger()
        Map m = [firstName: params.firstName, lastName: params.lastName, email: params.email, age: params.age]
        Person newUser = new Person(m)
        newUser.save()

        redirect(action: "list", id: newUser.id)
    }
    def show() {
        Person myPerson = Person.get(params.id)
        return [recentUser: myPerson]
    }

    def list() {
        [allCreatedUsers: Person.list()]
    }

    def edit() {
        return [editUser: Person.get(params.id)]
    }

    def update() {
        println "Values Updated"
        Person updatePerson = Person.get(params.id)
        updatePerson.firstName = params.firstName
        updatePerson.lastName = params.lastName
        updatePerson.email = params.email
        updatePerson.age = params.age.toInteger()
        updatePerson.save(flush: true)
        redirect(action: "list")
    }

    def delete() {
        Person delUser = Person.get(params.id)
        delUser.delete(flush: true)
        redirect(action: "list")
    }
}
