package learning.management

class PersonController {

    def create() {
        [errUser: new Person()]
    }

    def save() {
        println params
        params.age = params.age.toInteger()
        Map m = [firstName: params.firstName, lastName: params.lastName, email: params.email, age: params.age]
        Person newUser = new Person(m)
        newUser.save()
        println newUser.errors
        if(newUser.hasErrors()) {
            render (view: "create", model:[errUser: newUser])
            return
        }
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

    def search() {
    /*

        if(params.name && !params.email && !params.age) {
                matches= Person.findAllByFirstNameIlikeOrLastNameIlike("%${params.fn}%", "%${params.ln}%")
            println "1"
        }
        else if (params.email && !params.name && !params.age) {
            matches= Person.findAllByEmailIlike("%${params.email}%")
            println "2"
        }
        else if (params.age && !params.name && !params.email) {
            matches= Person.findAllByAge(params.age)
            println "3"
        }
        else if (params.name && params.email && !params.age) {
            matches= Person.findAllByFirstNameIlikeOrLastNameIlikeOrEmailIlike("%${params.fn}%","%${params.ln}%",
                    "%${params.email}%")
            println "4"
        }
        else if (params.name && params.age && !params.email) {
            matches= Person.findAllByFirstNameIlikeOrLastNameIlikeOrAge("%${params.fn}%","%${params.ln}%",params.age)
            println "5"
        }
        else if (params.email && params.age && !params.name) {
            matches= Person.findAllByEmailIlikeOrAge("%${params.email}%",params.age)
            println "6"
        }
        else if (params.name && params.email && params.age) {
            matches= Person.findAllByFirstNameIlikeOrLastNameIlikeOrEmailIlikeOrAge("%${params.fn}%","%${params.ln}%",
                    "%${params.email}%",params.age)
            println "7"
        }
    */
    }

    def result() {
        println params
        List s = params.name.split(" ")
        String fn = s[0]
        println ">>>>${fn}<<<<<"
        if (s.size() == 2) {
            String ln = s[1]
            println "****${ln}****"
        }
        List matches
        if (params.name && params.email && params.age) {
            matches = Person.findAllByFirstNameIlikeOrLastNameIlikeOrEmailIlikeOrAge("%${params.fn}%","%${params.ln}%",
                    "%${params.email}",params.age)
            println "1"
        }
        else if (params.name && params.email) {
            matches = Person.findAllByFirstNameIlikeOrLastNameIlikeOrEmailIlike("%${params.fn}%","%${params.ln}%",
                    "%${params.email}%")
            println "2"
        }
        else if (params.name && params.age) {
            matches = Person.findAllByFirstNameIlikeOrLastNameIlikeOrAge("%${params.fn}%","%${params.ln}%",params.age)
            println "3"
        }
        else if (params.email && params.age) {
            matches = Person.findAllByEmailIlikeOrAge("%${params.email}%",params.age)
            println "4"
        }
        else if (params.age) {
            matches = Person.findAllByAge(params.age)
            println "5"
        }
        else if (params.email) {
            matches = Person.findAllByEmailIlike("%${params.email}%")
            println "6"
        }
        else if (params.name) {
            if (s.size() == 1) {
                matches = Person.findAllByFirstNameIlikeOrLastNameIlike("%${s[0]}%","%${s[0]}%")
                println "7.1"
                println "??${params.name}??"
                println "!!${fn}!!"
            }
            else if (s.size() == 2) {
                matches = Person.findAllByFirstNameIlikeAndLastNameIlike("%${s[0]}%","%${s[1]}%")
                println "7.2"
                println ";;${fn};;"
                println ",,${fn},,"
            }

        }
        //List matches= Person.findAllByFirstNameIlikeOrLastNameIlikeOrEmailIlikeOrAge("%${params.fn}%","%${params
        // .fn}%",
                //"%${params.email}%",params.age)
        [mySearchedPerson: matches]
    }
}