#vote_sim.rb

class MenuOptions

	def view_politicians
		@politicians
	end

	def view_voters
		@voters
	end 

	def add(name,party)
		temp_hash = {name => party}
		if self.class == Politicians
			 @politicians.merge!(temp_hash)
		elsif self.class == Voters
			 @voters.merge!(temp_hash)
		else raise "ADD METHOD arg_to_add CLASS ERROR"
	end

	def edit(name)
		if self.class == Politicians
			if @politicians.keys.include? name
				puts "EDITING POLITICIAN INFO...\nNew Name?"
				name = gets.chomp
				puts "New Party?"
				party = gets.chomp
				return {name => party}
			else
				raise "NO SUCH POLITICIAN TO EDIT"
			end
		elsif self.class == Voters
			if @voters.keys.include? name
				puts "EDITING VOTER INFO...\nNew Name?"
				name = gets.chomp
				puts "New Politics?"
				politics = gets.chomp
				return {name => politics}
			else
				raise "NO SUCH VOTER TO EDIT"
			end
		else
			raise "EDIT ERROR - INCORRECT CLASS"
			end
		end			
	end

	def list
		view_politicians
		view_voters
	end
	

	puts "What would you like to do? Create, list, update, or vote?"
	
	while @input = gets.chomp.downcase
		if @input == "create"
			puts "CREATE DETECTED.....\nWhat would you like to create, Politician or Person?"
			pol_or_per = gets.chomp.downcase
			if pol_or_per == "politician"
				puts "CREATE POLITICIAN DETECTED"
			elsif pol_or_per == "person"
				puts "CREATE PERSON DETECTED"
			else 
				puts "INCORRECT VOTER TYPE...."
			end
		elsif @input == "list"
			puts "LIST DETECTED"
		elsif @input == "update" 
			puts "UPDATE DETECTED"
		elsif @input == "vote"
			puts "VOTE DETECTED"
		else
			puts "INCORRECT ENTRY....What would you like to do?"
		end
	end

end


class Politicians < MenuOptions
	attr_accessor :politicians
	def initialize
		@politicians = {}
	end
	def see_politicians
		p @politicians
	end
end

class Voters < MenuOptions
	attr_accessor :voters
	def initialize
		@voters = {}
	end
end

class ErrorTestClass <MenuOptions
end

def add_test
	test_politicians = Politicians.new
	test_politicians.add("Test1 Politician", "DEM")
	test_politicians.add("Test2 Politician", "REP")
	test_politicians.add("Test3 Politician", "REP")
	test_politicians.add("Test4 Politician", "DEM")
	p test_politicians.view_politicians
	p test_politicians.class
	
	# test_voters = Voters.new
	# test_voters.add("Test1 Voter", "LIB")
	# test_voters.add("Test2 Voter", "CON")
	# test_voters.add("Test3 Voter", "NEUTRAL")
	# test_voters.add("Test4 Voter", "SOCIAL")
	# p test_voters.view_voters
	# p test_voters.class

	# error_test_class = ErrorTestClass.new		
	# error_test_class.add("ADD ERROR TEST CLASS")
end

def edit_test
	test_politicians = Politicians.new
	test_politicians.add("Test3 Politician", "REP")
	test_politicians.view_politicians
	test_politicians.edit("Test3 Politician")   #=> Politician to edit "MATCH"
	#test_politicians.edit("test") 						  #=> Politician to edit "NO MATCH"

	# test_voters = Voters.new
	# test_voters.add("Test1 Voter", "LIB")
	# test_voters.edit("Test1 Voter")							#=> Voter to edit "Match"
	#test_voters.edit("NO VOTER NAME TEST")			#=> Voter to edit "NO MATCH"

	#error_test_class = ErrorTestClass.new			  #=> creates new instance of ErrorTestClass class to check method edit's class checker
	#error_test_class.edit("TEST ERROR CLASS")   #=> EDIT ERROR - INCORRECT CLASS
end

add_test
#edit_test



