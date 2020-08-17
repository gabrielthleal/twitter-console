require 'readline'

Dir["./helpers/*rb"].each {|file| require file}
Dir["./commands/**/*.rb"].each {|file| require file}
Dir["./config/*.rb"].each {|file| require file}

puts 'clear'

begin
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
		TweetConsole::other_profile()	
	when :profile
		TweetConsole::profile()
	when :search
		TweetConsole::search()
	when :help
		TweetConsole::help()	
#	when :new_tweet
#		TweetConsole::new_tweet()
	when :exit 
		Printc.title("Thank you for beeing here", :yellow, 2, true)
		break
	end
end
rescue Interrupt => e
	Printc("Thank you for beeing here", :yellow, 2, true)
