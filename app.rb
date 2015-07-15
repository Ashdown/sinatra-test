set :haml, :format => :html5

helpers SampleHelper, DateHelper

get "/" do
  slim :index
end

get "/sample" do
  slim :sample
end
