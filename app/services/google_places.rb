class RestaurantCultvator
  def find_restaraunt(longitude, latitude, radius)
    key = "AIzaSyCnYXPQPPEJocAuWT21VvAJkS5ucXGOMwg"
    url = "https://maps.googleapis.com/maps/api/place/nearbysearch/json?type=restaurant&"
    url += "key=#{key}&" + "location=#{longitude},#{latitude}&" + "radius=#{radius}"

    response = HTTParty.get(url)
    @body = JSON.parse(response.body)["results"]
    # JSON.parse(response.body)["results"].first["icon"]
  end
end
