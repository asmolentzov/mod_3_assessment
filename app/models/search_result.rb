class SearchResult
  
  def initialize(zip)
    @zip = zip
    @radius = 6
  end
  
  def stations(quantity)
    raw_stations = NrelService.new(@zip, @radius).get_stations[:fuel_stations]
    raw_stations.map do |raw_station|
      Station.new(raw_station)
    end[0..(quantity - 1)]
  end
end