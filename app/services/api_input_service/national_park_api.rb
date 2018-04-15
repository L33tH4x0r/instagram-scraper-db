class NationalParkApi < ApiInputService
  def initialize(opts={})
    super
  end
  def index
    return NationalPark.all
  end

  def create
    @national_park = NationalPark.find_or_create_by(name: @name, url: @url)
    if @national_park.save
      return {national_park: @national_park.to_json}
    else
      return {error: "National Park not saved"}
    end
  end
end
