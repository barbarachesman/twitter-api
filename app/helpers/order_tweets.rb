class OrderTweets

	def execute(tweets)
		Rails.logger.info("Ordem da lista - 1. Usuários com mais seguidores 2. Tweets que tenham mais retweets (considerar apenas o RT oficial do Twitter)
3. Tweet com mais likes")

		tweets_order = tweets.sort_by do |tweet|
			[-tweet['user']['followers_count'], -tweet['retweet_count'], -tweet['user']['favourites_count']]
		end
	end

end
