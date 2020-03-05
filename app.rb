require("sinatra")
require("sinatra/contrib/all")
require_relative("controllers/bookings_controller")
require_relative("controllers/members_controller")
require_relative("controllers/sessions_controller")
require_relative("controllers/trainers_controller")
also_reload( '../models/*' )

get "/" do
  erb(:landing_page, :layout => :layout_splash )
end

get "/index" do
  erb(:index, :layout => :layout)
end
