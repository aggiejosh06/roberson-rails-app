class ContactsController < ApplicationController
	# This action will look in the views folder for an html file called new.html.erb.
	def new
		# This creates a new contact object and saves it on the web server.	This is a specific user object.	
		@contact = Contact.new
	end
	
	# This action will look in the views folder for an html file called create.html.erb.
	def create
		@contact = Contact.new(contact_params)

		# This ruby method saves the contact information
		# @contact.save results in true
		if @contact.save
			flash[:success] = "Message sent."
			redirect_to new_contact_path
		# @contact.save results in false
		else
			flash[:danger] = "Error occured, message has not been sent."
			redirect_to new_contact_path
		end
	end

	private
		def contact_params
			#This white lists the parameters. I have no idea what that means.
			params.require(:contact).permit(:name, :email, :comments)
		end
end
