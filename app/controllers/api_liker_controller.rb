class ApiLikerController < ApplicationController
  def create
    json_response LikerApi.new(params).create
  end
end
