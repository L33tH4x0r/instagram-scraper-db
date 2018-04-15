class ApiPosterController < ApplicationController
  def create
    json_response PosterApi.new(params).create
  end
end
