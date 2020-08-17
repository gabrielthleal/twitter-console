require 'readline'

Dir["./helpers/*rb"].each {|file| require file}
Dir["./commands/**/*.rb"].each {|file| require file}
Dir["./config/*.rb"].each {|file| require file}

puts 'clear'

while true 
	command = menu(
		"What you want to do?",
		{
			"Make a tweet": :new_tweet,
			"My profile": :profile,
			"Someones profile": :other_profile,
			"Search": :search,
			"Help": :help,
			"Exit": :exit	
		})

	option = ReadLine.readline(">> ")

	options = %i[new_tweet profile other_profile search help exit]
	command = options[option.to_i]

	case command
	when :other_profile
		puts "\n\n see someones profilen\n\n"	
	when :profile
		puts "\n\n see my own profile\n\n"
	when :search
		puts "\n\n search \n\n"
	when :help
		puts "\n\n commands list \n\n"	
	when :new_tweet
		puts "\n\n creates a new tweet"
	when :exit 
		break
	end
end

