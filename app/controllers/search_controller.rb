class SearchController < ApplicationController
  def index
    @search_result = SearchResult.new(params[:q])
  end
  
end