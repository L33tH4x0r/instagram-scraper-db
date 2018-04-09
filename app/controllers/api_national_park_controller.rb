class ApiNationalParkController < ApplicationController
  def create
    json_response ApiInputService::NationalParkApi.create(params)
  end

  def index
    json_response ApiInputService::NationalParkApi.index
  end
end
