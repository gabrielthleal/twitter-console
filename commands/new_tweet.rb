module TweetConsole
	def self.new_tweet
		while true 
			Printc.title("What's happening?", :green, 1, true)
			status = Readline.readline('>> ')

			auth_client.update(status)
			user = auth_client.user
			
			option = menu(
				'What do you wanna do?',
				{
					'Back to menu': :exit,
					'Make a new tweet': :new_tweet,
					'See my profile': :profile
				}
			)

			break if option == :exit 

			if option == :profile
				TweetConsole::user_info(user)
				break 
			end
		end
	end
end
