class SearchResult
  def initialize(zip)
    @zip = zip
    @radius = 6
  end
  
  def closest_stations(quantity)
    service = NrelService.new
    raw_stations = service.get_stations(@zip, @radius)[:fuel_stations]
    stations = raw_stations.map do |raw_station|
      Station.new(raw_station)
    end
    Station.sort_by_distance(stations)[0...quantity]
  end
end