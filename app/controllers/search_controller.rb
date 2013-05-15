class SearchController < ApplicationController
  	def index
  		client = Linkscape::Client.new(:accessID => "member-43137ee460", :secret => "588b6b261b75cf42bdd7cc8091c4c56b")
  		@responseURL = client.urlMetrics(params[:keyword], :cols => :all)
 		@responseRank = client.mozRank(params[:keyword])
		@domain = Whois.find(params[:keyword])
		@rank = Rankstar.rank(:google, params[:keyword], params[:keyword], :limit => 200)


	end
end