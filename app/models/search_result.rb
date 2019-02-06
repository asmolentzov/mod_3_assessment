class SearchResult
  
  def initialize(zip)
    @zip = zip
  end
  
  def stations
    raw_stations = NrelService.get_stations
    raw_stations.map do |raw_station|
      Station.new(raw_station)
    end
  end
end