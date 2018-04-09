class ApiPosterController < ApplicationController
  def create
    json_response ApiInputService::PosterApi.create(params)
  end
end
