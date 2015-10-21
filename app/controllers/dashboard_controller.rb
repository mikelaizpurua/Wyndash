class DashboardController < ApplicationController

  def index
    @instagram_feed = HTTParty.get("https://api.instagram.com/v1/users/self/feed?access_token=2241851831.6eddba1.9af8868d838040f69feb686b9950997e")['data']

    @twitter_client = Twitter::REST::Client.new do |config|
      config.consumer_key        = "4Eh3Z0TdmbcEW4BZ907nmVZrd"
      config.consumer_secret     = "hvRBh0P7Tz0PVhriUi4oMLI85OIWClrKeDztLkBgVzbU8JeK8f"
      config.access_token        = "4000017922-6C4jzAmrerzR27NoqsG9oF520MjRHMqVvVw4o6M"
      config.access_token_secret = "HLh81lf3b7Msl4mXnWTBzVQgvwICkLwLuAP8OE42azCoJ"
    end

  end
end



# HTTParty method for Instagram popular searches
# HTTParty.get("https://api.instagram.com/v1/media/popular?client_id=3212b480b66b4b318aeade560424d99c")
# HTTParty.get("https://api.instagram.com/v1/users/self/feed?access_token=2241851831.6eddba1.9af8868d838040f69feb686b9950997e")

# Instagram api
# access-token=2241851831.6eddba1.9af8868d838040f69feb686b9950997e
# client_id=6eddba1dfbd449e8a697b121f2f9fe38

# Schedule Calendar ID
# ebeb817r11817qqjghdvp6r6is@group.calendar.google.com

# Events Calendar ID
# ckth5nlin7k3enq99iqm34it34@group.calendar.google.com

# auth = {:username => "wyndashmia", :password => "123123wyndash"}
# @twitter_feed = HTTParty.get("http://twitter.com/statuses/public_timeline.json",
#                      :basic_auth => auth)
