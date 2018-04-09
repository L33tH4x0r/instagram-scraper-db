class ApiInputService
  module NationalParkApi
    def self.index
      return NationalPark.all
    end

    def self.create params
      return NationalPark.create(name: params[:name], url: params[:url])
    end
  end
end
