class ApiFollowerController < ApplicationController
  def create
    json_response ApiInputService::FollowerApi.create(params)
  end
end
