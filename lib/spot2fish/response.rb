require "httparty"

class Spot2fishResponse
  include HTTParty
  base_uri "api.spot2fish.com/api/v1"

  def initialize(path, city, page = 1)
    @path = path
    @city = city
    @page = page
    @params = params
  end

  def api_response
    response = httparty_connection

    if valid_response?(response.code)
      response.parsed_response
    else
      "ERROR: Status #{response.code}"
    end
  end

  private

  def valid_response?(code)
    code == 200
  end

  def params
    { query: { city: @city, page: @page} }
  end

  def httparty_connection
    self.class.get(@path, @params)
  end
end
