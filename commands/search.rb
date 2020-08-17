require 'radline'

module TweetConsole
  def self.search
    while true
      Printc.title('Which term do you want to search for?', :green, 1, true)
      option = Readline.readline(">> ")

      tweets = auth_client.search("#{option} -rt", count: 10, tweet_mode: 'extended', result_type: 'recent').take(10)
      
      tweets.each do |t|
        puts ''
        Printc.pair('Text', t.attrs[:full_text], :yellow, :white, 0.1)
        Printc.pair('User', t.user.name, :yellow, :white, 0.1)
        Printc.pair('Number of retweets', t.retwee_count, :yellow, :white, 0.1)
      end

      option = menu(
        'What do you prefer?'
        {
          'Do another search': :search,
          'Back to menu': :exit
        }
      )

      break if option == :exit
    end
  end 
end
