class ApiPosterController < ApplicationController
  def create
    json_response ApiInputService::PosterApi.new(params).create
  end
end
