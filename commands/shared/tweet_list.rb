require 'readline'

module TweetConsole 
  def self.list_tweets(user_name=nil, is_me=false)
    page = 1

    while true 
      tweets =
        if is_me 
          auth_client.user_timeline(page: page, count: 5, tweet_mode: 'extended')
        else
          auth_client.user_timeline(user_name, page: page, count: 5, tweet_mode: 'extended')
        end
      
      tweets.each do |t|
        puts ''

        Printc.pair('Text', t.attrs[:full_text], :yellow, :white, 0.1)
        Printc.pair('Number of retweets', t.retweet_count, :yellow, :white, 0.1)
        puts ''
      end

      option = menu(
        'What do you wanna do?',
        {
          'Back to menu': :exit,
          'See more tweets': :more_tweets
        }
      )

      break if option == :exit
        
      page += 1 if option == :more_tweets
    end
  end
end