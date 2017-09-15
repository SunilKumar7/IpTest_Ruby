class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def hello
  	require "net/http"
  	ip = request.remote_ip
	#ip = Net::HTTP.get(URI("https://api.ipify.org"))
	location = Net::HTTP.get(URI("https://freegeoip.net/json/"+ip))
  	render html: ip + location
  end
end
