require 'sinatra'

#import fetchers
require_relative 'fetchers/entrances'
require_relative 'fetchers/lines'


get '/' do
	"Hello Squirrel"
end

get '/api/mta/subway/entrances' do
	content_type :json


	puts params
	if params['lat'] && params['lng']
		puts 'has what i need'

		return Get.all_within_radius(params['lat'], params['lng']).to_json
	end

	return Entrances.get_all.to_json
end

get '/api/mta/subway/lines' do
	content_type :json

	return Lines.get_all.to_json
end



# get '/api/mta/subwayentrances/:id' do
# 	content_type :json
# end

# get '/api/mta/subwayentrances' do

# end