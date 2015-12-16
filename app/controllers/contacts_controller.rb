class ContactsController < ApplicationController
# This action will look in the views folder for an html file called new.html.erb.
	def new
# This creates a new contact object and saves it on the web server.	This is a specific user object.	
		@contact = Contact.new
	end
	
# This action will look in the views folder for an html file called create.html.erb.
	def create
	end
end
