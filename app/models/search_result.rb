class SearchResult
  
  def initialize(zip)
    @zip = zip
    @radius = 6
  end
  
  def stations
    raw_stations = NrelService.new(@zip, @radius).get_stations
    raw_stations.map do |raw_station|
      Station.new(raw_station)
    end
  end
end