require 'readline'

module TweetConsole
  def self.profile
    while true

      user = auth_client.user

      TweetConsole::user_info(user)

      option = menu(
        'What do you prefer?'
        {
          'Back to menu': :exit,
          'See your tweets': :tweets
        }
      )

      break if option == :exit
    end
  end
end
