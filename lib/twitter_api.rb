class TwitterApi
	def self.my_private_tweets
		client.home_timeline()
	end

	def self.client
	 @client ||= Twitter::REST::Client.new do |config|
       config.consumer_key          = 'rw2lgXvepd5jv7xsfae3s08lI'
       config.consumer_secret      = 'ylKOBrvl0Icvzk3LEBVYyKNfqFWbznPeCE8wapfmQeZjU9A4U2'
       config.access_token            = '117179967-oOa8f4JYfpCYADj2BZ3ftMez0L3Jb14Bhi2DwXOr'
       config.access_token_secret = 'Ptmuiv8fDnYWH6PIOeS5uFXMMjAhYv0ku1qDXUnJjHMl9'
      end
   end
end
