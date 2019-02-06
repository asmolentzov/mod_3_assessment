class NrelService
  def get_stations
    conn = Faraday.new(url: 'https://developer.nrel.gov') do
      |faraday|
      faraday.params['api_key'] = ENV['NREL_API_KEY']
      faraday.adapter Faraday.default_adapter
    end
    
    result = conn.get('api/alt-fuel-stations/v1.json?fuel_type=ELEC,LPG&zip=80203&radius=6')
    require 'pry'; binding.pry
  end
end