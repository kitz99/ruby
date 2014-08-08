# guide.rb

require 'restaurant'
require 'support/string_extend'


class Guide
    
    class Config
    	@@actions = ['list', 'find', 'add', 'quit']

    	def self.actions; @@actions; end
    end


	def initialize(path = nil)
		#locate the restaurant text file at path
		Restaurant.filepath = path
		if Restaurant.file_usable?
			puts "Found restaurants file"
		# or create a new file
		elsif Restaurant.create_file
		       puts "Created restaurants file"
		# exit if create fails
	    else
	    	puts "Exiting...\n\n"
	    	exit!
	    end
	end

	def launch!
		introduction

		# action loop
		result = nil
		until result == :quit
			action, args = get_action
			result = do_action(action, args)
		end

		conclusion 
	end

	def get_action
		action = nil
		until Guide::Config.actions.include?(action)
			puts "Actions: " + Guide::Config.actions.join(", ") if action
			print "> "
			user_response = gets.chomp
			args = user_response.downcase.strip.split(' ')
			action = args.shift
		end
		return action, args
	end

	def do_action(action, args=[])
		case action
		when 'list'
			list(args)
		when 'find'
			keyword = args.shift
			find(keyword)
		when 'add'
			add
		when 'quit'
			return :quit
		else 
			puts "I don't understant that command bro :( "
		end

	end


	def add
		output_action_head("Add a restaurant")
		
		restaurant = Restaurant.build_using_questions

		if restaurant.save
			puts "\nRESTAURANT ADDED\n\n"
		else
			puts "\nSave Error: restaurant not added\n\n"
		end
	end

	def list(args = [])
		sort_order = args.shift
		sort_order = args.shift if sort_order == 'by'
		sort_order = 'name' unless ['name', 'cuisine', 'price'].include?(sort_order)
		
		output_action_head("Listing all restaurants")

		restaurants = Restaurant.saved_restaurants

		restaurants.sort! do |r1, r2|
			case sort_order
			when 'name'
				r1.name.downcase <=> r2.name.downcase
			when 'cuisine'
				r1.cuisine.downcase <=> r2.cuisine.downcase
			when 'price'
				r1.price.to_i <=> r2.price.to_i
			end
		end
		output_restaurant_table(restaurants)
		puts "Sort using 'list cuisine' or 'list by cuisine' \n\n"
	end

	def find(keyword="")
		output_action_head("Find a restaurant")
		if keyword
			# search
			restaurants = Restaurant.saved_restaurants
			found = restaurants.select do |rest|
				rest.name.downcase.include?(keyword.downcase) ||
				rest.cuisine.downcase.include?(keyword.downcase) ||
				rest.price.to_i <= keyword.to_i
			end

			output_restaurant_table(found)
		else
			puts "Find using a key phrase to search the restaurant list"
		end
	end

	def introduction
		puts "\n\n\t\t<<< Wellcome to the Food Finder >>> \n\n"
		puts "\tThis is an interactive guide to help you to find the food you crave\n\n"
	end

	def conclusion
		puts "\n\t\t<<< Goodbye and Bon Appetit! >>>\n\n\n"
	end

	private

	def output_action_head(text)
		puts "\n\t#{text.upcase.center(60)}\n\n"
	end

	def output_restaurant_table(restaurants = [])
		print " " + "\tName".ljust(30)
		print " " + "Cuisine".ljust(20)
		print " " + "Price".rjust(6) + "\n"
		print "\t"
		puts "-" * 60
		restaurants.each do |rest|
			line = "\t" << rest.name.titleize.ljust(30)
			line << " " + rest.cuisine.titleize.ljust(20)
			line << " " + rest.formatted_price.rjust(6)
			puts line
		end
		puts "No listing foud" if restaurants.empty?
		print "\t";
		puts "-" * 60
		puts
	end


end
