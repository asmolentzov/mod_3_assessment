class Station
  attr_reader :name,
              :address,
              :fuel_types,
              :distance,
              :access_times
              
  def initialize(attributes)
    @name = attributes[:station_name]
    @address = attributes[:street_address]
    @fuel_types = attributes[:fuel_type_code]
    @distance = attributes[:distance]
    @access_times = attributes[:access_days_time]
  end
  
  def self.sort_by_distance(stations, quantity)
    sorted_stations = stations.sort_by do |station|
      station.distance
    end
    sorted_stations[0...quantity]
  end
end