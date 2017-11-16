# 1.  Create  App, User, and Store classes
# - make a statement with question to welcome user
# - make user with wallet_amt
# - create a cart for user items to contain
# - create Items in the app with price
# - ask for the users name
# - ask how much money they have
# - create a store with multiple items for user to buy
# - Make sure each item has a name and price
# - have 3 options for user to choose
#   - 1.  Buy something

#   - 2  Display store inventory

#   - 3 Display how much money they have left

@items = [{ Chip: 1 }, { Cookie: 2 }, { Tv: 3 }, { Rockstar: 4}]
@shopping_cart = []
#@num_1 = [10]
# num_2 = 1

def menu
	puts "Lets go shopping! What would you like to do?"
	puts "1. Buy an item"
	puts "2. Show item inventory"
	puts "3. See how much money you have left"
	puts "4. View items in your shopping cart"
end
menu



def show_inventory
	puts "Here is what we have available"
	puts @items
	puts "if you want to buy an item, press 1"
	puts "if you want to return to menu, press 5"
	user_input = gets.to_i
	case user_input
	when 1
		buy_item
	when 5
		menu
	end			
end

def buy_item
	puts "what would you like to buy?"
	puts @items
	@shopping_cart << gets.chomp
		# def subtract(num_1, num_2) # I am not sure how to approach subtracting money from the total wallet ammount.
		# 			num_1 - num_2
		# end
	puts "Your selection has been added to your shopping cart"
	puts "what would you like to do next?"
	puts "if you would like to buy another item, press 1"
	puts "if you would like to return to menu, press 5"
	case user_input = gets.to_i
	when 1
		buy_item
	when 5
		menu
	end	
end

def wallet_amount #(num_1) is this how i would want to do this?
	puts #@num_1
	puts "What would you like to do next?"
	puts "to buy an item, press 1"
	puts "to return to the menu, press 5"
	case user_input = gets.to_i
	when 1
		buy_item
	when 5
		menu	
	end
end


while true
	user_input = gets.to_i
	case user_input
	when 1
		buy_item
	when 2
		show_inventory
	when 3
		wallet_amount
	when 4
		puts @shopping_cart	
	end				
end


# I didnt end up getting to far, but here is what i have. 








