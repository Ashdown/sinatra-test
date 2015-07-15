set :haml, :format => :html5

helpers SampleHelper, DateHelper, EchoHelper

get "/" do
  slim :index
end

get "/sample" do
  slim :sample
end
