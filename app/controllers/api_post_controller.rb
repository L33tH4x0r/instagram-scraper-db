class ApiPostController < ApplicationController
  def create
    json_response ApiInputService::PostApi.new(params).create
  end
end
