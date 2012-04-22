class Person(firstName: String) {
    
	var lastName = ""
	
	println("Outer constructor")
    
	def this(firstName: String, lastName: String) {
        this(firstName)
        this.lastName = lastName
        println("Inner constructor")
    }
    
    def talk() = println("Hi " + firstName + " " + lastName + ".")
}

val bob = new Person("Bob")
val romanBoiko = new Person("Roman", "Boiko")

bob.talk
romanBoiko.talk