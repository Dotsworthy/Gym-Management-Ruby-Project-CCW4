require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/booking.rb' )
require_relative('../models/member.rb')
require_relative('../models/session.rb')
require_relative('../models/trainer.rb')
also_reload( '../models/*' )