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
				puts "politician edit method match - retrieve new info here"
			else
				raise "NO SUCH POLITICIAN TO EDIT"
			end
		elsif self.class == Voters
			if @voters.keys.include? name
				puts "voter edit method match - retrieve new info here"
			else
				raise "NO SUCH VOTER TO EDIT"
			end
		else
			raise "EDIT ERROR - INCORRECT CLASS"
		end
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
	def see_voters
		p @voter
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
	test_politicians.view_politicians
	
	test_voters = Voters.new
	test_voters.add("Test1 Voter", "LIB")
	test_voters.add("Test2 Voter", "CON")
	test_voters.add("Test3 Voter", "NEUTRAL")
	test_voters.add("Test4 Voter", "SOCIAL")
	test_voters.view_voters

	# error_test_class = ErrorTestClass.new		
	# error_test_class.add("ADD ERROR TEST CLASS")
end

def edit_test
	test_politicians = Politicians.new
	test_politicians.add("Test3 Politician", "REP")
	test_politicians.view_politicians
	test_politicians.edit("Test3 Politician")   #=> Politician to edit "MATCH"
	#test_politicians.edit("test") 						  #=> Politician to edit "NO MATCH"

	test_voters = Voters.new
	test_voters.add("Test1 Voter", "LIB")
	test_voters.edit("Test1 Voter")							#=> Voter to edit "Match"
	#test_voters.edit("NO VOTER NAME TEST")			#=> Voter to edit "NO MATCH"

	#error_test_class = ErrorTestClass.new			  #=> creates new instance of ErrorTestClass class to check method edit's class checker
	#error_test_class.edit("TEST ERROR CLASS")   #=> EDIT ERROR - INCORRECT CLASS
end

p add_test
p edit_test



