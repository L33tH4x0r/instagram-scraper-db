class ApiNationalParkController < ApplicationController
  def create
    json_response NationalPark.create(name: params[:name], url: params[:url])
  end

  def index
    json_response NationalPark.all
  end
end
