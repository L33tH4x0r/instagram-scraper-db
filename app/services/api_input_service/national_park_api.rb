class NationalParkApi < ApiInputService
  def initialize(opts={})
    super
  end
  def index
    return NationalPark.all
  end

  def create
    return NationalPark.create(name: @name, url: @url)
  end
end
