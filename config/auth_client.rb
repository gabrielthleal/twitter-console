require 'twitter'

def auth_client
  Twitter::REST::Client.new do |config|
    config.consumer_key = 'kxNwq6ygX9Or1g5c2OWq5LkLD'
    config.consumer_secret = 'a4YqC2h2ZTPOpupqi78mdwEcpVXBEWOTSDpIcsTVJlbhhetYR9'
    config.access_token = '798136551242919936-ZX06vYqRjBOw7ZkMo9Hv2ZD8uzHl7Fc'
    config.access_token_secret = 'doQKiG8qIvZUyb80bdSJ6lxop5yvirLdk7RIYL5qzxGXO'
  end
end
