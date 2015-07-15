set :haml, :format => :html5

helpers Sample

get "/" do
  slim :index
end

get "/sample" do
  slim :sample
end
