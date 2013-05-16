package webflowdemo

class Contact implements Serializable {
	String firstName
	String lastName
	String address1
	String address2
	String city
	String state
	String zip
	String phone
	String email
	
    static constraints = {
		firstName(blank:false, nullable:false, maxSize:50)
		lastName(blank:false, nullable:false, maxSize:50)
		address1(blank:false, nullable:false, maxSize:50)
		address2(blank:true, nullable:true)
		city(blank:false, nullable:false, maxSize:50)
		state(blank:false, nullable:false, maxSize:2)
		zip(blank:false, nullable:false, maxSize:10)
		phone(blank:false, nullable:false, maxSize:15)
		email(blank:false, nullable:false, maxSize:50)
	}
	String toString(){
		"${firstName} ${lastName}"
	}
}