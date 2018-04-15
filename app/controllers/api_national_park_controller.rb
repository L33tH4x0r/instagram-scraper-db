class ApiNationalParkController < ApplicationController
  def create
    json_response NationalParkApi.new(params).create
  end

  def index
    json_response NationalParkApi.new(params).index
  end
end
