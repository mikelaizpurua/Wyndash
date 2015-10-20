class DashboardController < ApplicationController

  def index
    @instagram_feed = HTTParty.get("https://api.instagram.com/v1/users/self/feed?access_token=2241851831.6eddba1.9af8868d838040f69feb686b9950997e")['data']
    @schedule = HTTParty.get("https://www.googleapis.com/calendar/v3/calendars/ebeb817r11817qqjghdvp6r6is@group.calendar.google.com/events")

  end

end





# HTTParty method for Instagram popular searches
# HTTParty.get("https://api.instagram.com/v1/media/popular?client_id=3212b480b66b4b318aeade560424d99c")
# HTTParty.get("https://api.instagram.com/v1/users/self/feed?access_token=2241851831.6eddba1.9af8868d838040f69feb686b9950997e")

# Instagram api
# access-token=2241851831.6eddba1.9af8868d838040f69feb686b9950997e
# client_id=6eddba1dfbd449e8a697b121f2f9fe38

# Google api
# OAuth client
# Here is your client ID
# 573104718688-8l36fmf93ga007fuu0qgsiatvlbdklfb.apps.googleusercontent.com
# Here is your client secret
# YAVtMUoNyuDBmKOYMaqvTdq_

# Schedule Calendar ID
# ebeb817r11817qqjghdvp6r6is@group.calendar.google.com

# Events Calendar ID
# ckth5nlin7k3enq99iqm34it34@group.calendar.google.com
