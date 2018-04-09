class ApiInputService
  module PosterApi
    def create(params)
      if params[:national_park]
        poster = Poster.create(name: params[:name])
        national_park = NationalPark.find_by(name: params[:national_park])
        if national_park
          poster.national_park = national_park
          poster.save!
          return follower
        else
          return {error: "National Park not found"}
        end
      else
        return {error: "Needs national_park parameter"}
      end
    end
  end
end
