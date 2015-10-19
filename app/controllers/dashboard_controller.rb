class DashboardController < ApplicationController

  def index
    @url = HTTParty.get("https://api.instagram.com/v1/users/self/feed?access_token=2241851831.6eddba1.9af8868d838040f69feb686b9950997e")['data']
  end

end





# HTTParty method for Instagram popular searches
# HTTParty.get("https://api.instagram.com/v1/media/popular?client_id=3212b480b66b4b318aeade560424d99c")
# HTTParty.get("https://api.instagram.com/v1/users/self/feed?access_token=2241851831.6eddba1.9af8868d838040f69feb686b9950997e")

# access-token=2241851831.6eddba1.9af8868d838040f69feb686b9950997e
# client_id=6eddba1dfbd449e8a697b121f2f9fe38
