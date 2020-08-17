module TweetConsole
	def self.other_profile
		while true 
			Printc.title('Which user do you wanna search?', :green, 1, true)
			user_name = Readline.readline('>> ')

			user = auth_client.user(user_name)

			TweetConsole::user_info(user)

			option = menu(
				'What do you wanna do?',
				{
					'Back to menu': :exit,
					'Seach for another user': :other_user,
					'See their tweets': :tweets
				}
			)

			break if option == :exit 

			if option == :tweets
				TweetConsole::list_tweets(user_name) 
				break 
			end
		end
	end
end
