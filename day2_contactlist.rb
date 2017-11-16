# 1.  Create a ruby script for adding contacts to a list

# 2.  Create a menu to add contacts, view contacts, edit contacts

# 3.  Contacts should have a name at minimum

@contacts = ['Taylor', 'Will', 'Henry', 'TJ']
# menu to show user 
def menu
	puts "what do you want to do?"
	puts "1. add a contact"
	puts "2. view contacts"
	puts "3. edit a contact"
end
menu


def add_contact
	# ask the user who they want to add
	# add user input to a list
	puts "Who would you like to add?"
	@contacts << gets.chomp
end

def view_contacts
	@contacts.each_with_index { |contact, i| puts "#{i + 1} - #{contact}" }
end



# display the contacts to the user
# ask the user which one they want to update
# update the list with the new contact
def edit_contacts
	view_contacts
	puts "which one of these contacts would you like to edit?"
	contact_index = gets.to_i
	puts "whats the new contact name?"
	updated_user = gets.chomp
	@contacts[contact_index - 1] = updated_user
end	



# ask what they want
while true
	user_input = gets.to_i
	case user_input
	when 1
		add_contact
	when 2
		view_contacts	
	when 3
		edit_contacts	
	end
end	

# display the contacts to the user
# ask the user which one they want to update
# update the list with the new contact


