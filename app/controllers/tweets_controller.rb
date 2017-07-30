class TweetsController < ApplicationController

	ID_LOCAWEB = 42

	def index

		@twitter_builder = TwitterFacadeBuilder.new
		@parseObject = ParseJsonToObject.new

		twitter_facade  = @twitter_builder.builder
		tweets = twitter_facade.tweets_relevants
		@users_tweets = @parseObject.parse(tweets)

		if @users_tweets == false
			@error = true
		end

		@users_tweets

	end

	def relevants
		@twitter_builder = TwitterFacadeBuilder.new
		@parseObject = ParseJsonToObject.new

		twitter_facade  = @twitter_builder.builder
		tweets = twitter_facade.tweets_relevants
		@users_tweets = @parseObject.parse(tweets)

		if @users_tweets == false
			@error = true
		end

		@users_tweets

	end


	def mentions

		@twitter_builder = TwitterFacadeBuilder.new
		@parseObject = ParseJsonToObject.new


		twitter_facade  = @twitter_builder.builder
		tweets = twitter_facade.group_tweets_by_user
		@users_tweets = @parseObject.parse(tweets)

		if @users_tweets == false
			@error = true
		end
		@users_tweets
	end
end
