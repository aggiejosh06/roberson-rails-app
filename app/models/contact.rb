class Contact < ActiveRecord::Base
	#These actions? make sure that someone actually puts in a response for both name and e-mail.
	validates :name, presence: true
	validates :email, presence: true
end