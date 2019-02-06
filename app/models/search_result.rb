class SearchResult
  
  def initialize(zip)
    @zip = zip
    @radius = 6
  end
  
  def closest_stations(quantity)
    raw_stations = NrelService.new(@zip, @radius).get_stations[:fuel_stations]
    stations = raw_stations.map do |raw_station|
      Station.new(raw_station)
    end
    Station.sort_by_distance(stations, quantity)
  end
end