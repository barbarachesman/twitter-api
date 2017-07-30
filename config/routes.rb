Rails.application.routes.draw do
	match 'tweets' => 'tweets#index', via: 'get'
	match 'tweets/most_relevants' => 'tweets#relevants', via: 'get'
	match 'tweets/most_mentions' => 'tweets#mentions', via: 'get'
end
