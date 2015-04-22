#vote_sim_module_hash_edit.rb

module HashEdit
	
	def hash_add(hash)
		puts "New name?"
		new_key = gets.chomp
		puts "New party?"
		new_value = gets.chomp
		temp_hash = {}
		temp_hash = {new_key => new_value}
		temp_hash.merge!(hash)
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
			return hash = Hash[*temp_array]
			break
			end
		end
	end
	
end
