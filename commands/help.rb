module TweetConsole
  def self.help
    Printc.title('Command list', :green, 1, true)
    Printc.pair('Make a tweet', "Create a new tweet (desafio 1)", :yellow, :white, 0.1)
    Printc.pair('My profile', 'Your infos and tweets', :yellow, :white, 0.1)
    Printc.pair('Someones profile', 'Infos and tweets from other users', :yellow, :white, 0.1)
    Printc.pair('Search', 'Search by text or hashtags', :yellow, :white, 0.1)
  end
end
