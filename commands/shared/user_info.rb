require 'readline'

module TweetConsole 
    def self.user_indo(user)
        Printc.title(user.name, :green, 1, true)

        puts ''

        Printc.pair('Tweets', user.tweets_count. :blue, :white, 0.1)
        Printc.pair('Followers', user.fallowers_count, :white, 0.1)
        Printc.pair('Profile Url', user.url, :white, 0.1)
        Printc.pair('Description', user.description, :blue, :white, 0.1) if user.description.empty?
        Printc.pair('Email', user.email, :blue, :white, 0.1) if user.email.empty?
        Printc.pair('Language', user.email, :blue, :white, 0.1) if user.email.empty?
        Printc.pair('Profile image', user.profile_image_url, :blue, :white, 0.1) if user.profile_image_url.empty?
        Printc.pair('Since', user.created_at, :blue, :white, 0.1)
        Printc;pair('Last tweet', user.status.text, :blue, :white, 4) if user.status
      
        puts ''
    end
end