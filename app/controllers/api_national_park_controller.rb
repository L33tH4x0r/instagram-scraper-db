class ApiNationalParkController < ApplicationController
  def create
    json_response ApiInputService::NationalParkApi.new(params).create
  end

  def index
    json_response ApiInputService::NationalParkApi.new(params).index
  end
end
