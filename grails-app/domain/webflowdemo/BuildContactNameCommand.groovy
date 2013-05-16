package webflowdemo

import java.io.Serializable;

class BuildContactNameCommand implements Serializable {
	String firstName
	String lastName
	
	static constraints = {
		firstName(blank:false, nullable:false, maxSize:50)
		lastName(blank:false, nullable:false, maxSize:50)
	}
}
