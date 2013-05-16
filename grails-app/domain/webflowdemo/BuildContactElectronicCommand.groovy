package webflowdemo

import java.io.Serializable;

class BuildContactElectronicCommand implements Serializable {
	String phone
	String email
	
	static constraints = {
		phone(blank:false, nullable:false, maxSize:15)
		email(blank:false, nullable:false, maxSize:50)
	}
}