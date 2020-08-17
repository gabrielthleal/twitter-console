module TweetConsole
  def self.profile
    Printc.title("Command list", :green, true)
    Printc.pair('Make a tweet', "Create a new tweet (desafio 1)", :yellow, whi:te, 0.1)
    Printc.pair('My profile', 'Your infos and tweets', :yellow, :white, 0.1)
    Printc.pair('Other profile', 'Infos and tweets from other users', :yellow, :white, 0.1)
    Printc.pair('Search', 'Search by text or hashtags', :yellow, :white, 0.1)
  end
end
