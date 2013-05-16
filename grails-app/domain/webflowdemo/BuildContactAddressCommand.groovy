package webflowdemo

import java.io.Serializable;

class BuildContactAddressCommand implements Serializable {
	String address1
	String address2
	String city
	String state
	String zip
	
	static constraints = {
		address1(blank:false, nullable:false, maxSize:50)
		address2(blank:true, nullable:true)
		city(blank:false, nullable:false, maxSize:50)
		state(blank:false, nullable:false, maxSize:2)
		zip(blank:false, nullable:false, maxSize:10)
	}
}
