#voter_sim_final.rb

load 'vote_sim_classes.rb'
load 'menu_prompt_method.rb'
load 'vote_sim_module_hash_edit.rb'
load 'vote_sim_module_voterollactions.rb'
load 'voting_4.rb'


$politicians = {}
$voters = {}

loop do
	print "Create, list, update, vote, or exit?"
	menu_input = gets.chomp.downcase
	MenuPrompt(menu_input)
end
