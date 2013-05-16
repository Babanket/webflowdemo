package webflowdemo

class ContactController {
	static scaffold = true
	def transient sessionFactory
	
	def buildFlow = {
		enter {
			action{
				flow.contact = new Contact()
				[contact: flow.contact]
			}
			on("success").to("name")
			on(Exception).to("error")
		}
		name {
			on('next'){ BuildContactNameCommand command ->
				if(command.hasErrors()){
					flash.message = "Validation error"
					flow.command = command
					return error()
				}
				bindData(flow.contact, command)
				[contract:flow.contact]
			}.to('address')
			on('cancel').to('finish')
		}
		address{
			on('next'){ BuildContactAddressCommand command ->
				if(command.hasErrors()){
					flash.message = "Validation error"
					flow.command = command
					return error()
				}
				bindData(flow.contact, command)
				[contact: flow.contact]
			}.to('electronic')
			on('previous').to('name')
			on('cancel').to('finish')
		}
		electronic{
			on('next') { BuildContactElectronicCommand command ->
				if(command.hasErrors()){
					flash.message = "Validation error"
					flow.command = command
					return error()
				}
				bindData(flow.contact, command)
				[contact:flow.contact]
			}.to('complete')
			on('previous').to('address')
			on('cancel').to('finish')
		}
		complete{
			on('next'){
                println flow.contact
				if(!flow.contact.save()){
					flash.message = "Couldn't save the contact"
					return error()
				}
			}.to('finish')
			on('previous').to('electronic')
			on('cancel').to('finish')
			on(Exception).to('error')
		}
		error{
			on('confirm').to('finish')
		}
		finish{
			redirect(controller: 'contact', action:'list')
		}
	}
}







