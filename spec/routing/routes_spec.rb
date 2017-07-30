require 'rails_helper'

describe "TweetsController" do
	it "routes to #tweets" do
		expect(:get => "tweets").to route_to(
        :controller => "tweets",
        :action => "index")
	end

	it "routes to #relevants" do
		expect(:get => "tweets").to route_to(
        :controller => "tweets",
        :action => "relevants")
	end

	it "routes to #mentions" do
		expect(:get => "tweets").to route_to(
        :controller => "tweets",
        :action => "mentions")
	end
end
