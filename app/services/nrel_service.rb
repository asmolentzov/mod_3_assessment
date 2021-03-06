class NrelService

  def get_stations(zip, radius)
    get_results("api/alt-fuel-stations/v1/nearest.json?fuel_type=ELEC,LPG&location=#{zip}&radius=#{radius}")
  end
  
  def get_results(url)
    result = conn.get(url)
    JSON.parse(result.body, symbolize_names: true)
  end
  
  def conn
    Faraday.new(url: 'https://developer.nrel.gov') do
      |faraday|
      faraday.params['api_key'] = ENV['NREL_API_KEY']
      faraday.adapter Faraday.default_adapter
    end
  end
end