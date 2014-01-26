#app.rb
set :haml, :format => :html5

get "/" do
  slim :index
end
