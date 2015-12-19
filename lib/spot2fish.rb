require_relative "spot2fish/version"
require_relative "spot2fish/response"

module Spot2fish
  def self.all(page = 1)

    Spot2fishResponse.new('/spots', nil, page).api_response
  end

  def self.search(city, page = 1)

    Spot2fishResponse.new('/spots/saved_spots', city, page).api_response
  end

  def self.search_social_media(city, page = 1)

    Spot2fishResponse.new('/spots/search', city, page).api_response
  end
end
