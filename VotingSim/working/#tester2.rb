# #tester2.rb




$politicians = {"jeff"=>"dem", "jeb" => "con"}


def hash_add(hash)
		puts "New name?"
		new_key = gets.chomp.downcase
		puts "New party?"
		new_value = gets.chomp.downcase
	  temp_hash = {}
	 	temp_hash[new_key] = new_value
	  return temp_hash.merge!(hash)
	end

	

def hash_delete(hash, delete_key)
	temp_hash = hash
	temp_names = hash.keys
	temp_parties = hash.values
	temp_names.each_with_index do |x, index|
		if x.to_s == delete_key.to_s
			temp_names
			temp_names = temp_names - ["#{x}"]
			temp_parties
			temp_parties = temp_parties - [temp_parties[index]]
			temp_array = temp_names.zip(temp_parties).flatten
			return p hash = Hash[*temp_array]
			break
		else
			p "NO MATCH"
		end
	end
end


def update
		puts "Entry (name) to change?"
		name_to_change = gets.chomp
		if $politicians.keys.include? name_to_change
			$polticians = hash_add($politicians)
			$politicians = hash_delete($politicians,name_to_change)
		else
			puts "NOT POLITICIAN"
		end
	end	



print update





















# 	$hash1 = {"jeff" => "dem", "dan" => "con", "max" => "soc"}


# module HashEdit

# 	def hash_add(hash, new_key, new_value)
# 	  temp_hash = {}
# 	 	temp_hash[new_key] = new_value
# 	  return temp_hash.merge!(hash)
# 	end

# 	def hash_delete(hash, delete_key)
# 		p temp_hash = hash
# 		temp_names = hash.keys
# 		temp_parties = hash.values
# 		temp_names.each_with_index do |x, index|
# 			if x.to_s == delete_key.to_s
# 				temp_names
# 				temp_names = temp_names - ["#{x}"]
# 				temp_parties
# 				temp_parties = temp_parties - [temp_parties[index]]
# 				temp_array = temp_names.zip(temp_parties).flatten
# 				return hash = Hash[*temp_array]
# 				break
# 			else
# 				puts "NO MATCH"
# 			end
# 		end
# 	end

# end

# include HashEdit

# p $hash1 = hash_add($hash1, "JEFF", "DEM")
# p $hash1 = hash_delete($hash1, "jeff")

# # def change

# # puts "Name to change: "
# # name = "jeff"
# # 	$hash1.keys.each do |x|
# # 		if x == name
# # 			puts "New Name?"
# # 			new_name = "JEFF"
# # 			puts "New Party?"
# # 			new_party = "DEM"
# # 			$hash1 = hash_add($hash1, new_name, new_party)
# # 			p $hash1 = $hash1.hash_delete($hash1, name)

# # 		else
# # 			puts " NO MATCH"
# # 		end
# # 	end
# # end

# # change

# # # def change_test
# # # 	end

# # # p $hash1.keys
# # # change
# # # p $hash1



# # hash_add($hash1, "JEFF", "DEM")

