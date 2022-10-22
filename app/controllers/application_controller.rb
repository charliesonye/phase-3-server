class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do 
    "Let this server as the Home page message".to_json
  end

  get "/technicians" do
    techies = Technician.all
    techies.to_json
  end

  get "/technicians/:id" do
    techie = Technician.find_by(id: params[:id])
    techie.to_json(include: :customers)
  end

  get "/customer/:id" do 
    customer = Customer.find_by(id: params[:id])
    if customer.item_returned
    customer.to_json
    else
      customer.item_returned = "Pending"
      customer.to_json
    end
  end

end
