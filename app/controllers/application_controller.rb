class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do 
    "Let this serve as the Home page message".to_json
  end

  get "/technicians" do
    techies = Technician.all
    techies.to_json
  end

  get "/technicians/:id" do
    techie = Technician.find_by(id: params[:id])
    techie.to_json(include: :customers)
  end

  get "/customers" do 
      customers = Customer.all
      customers.to_json
  end 
  
  get "/customers/:id" do 
    customer = Customer.find_by(id: params[:id])
    if customer.item_returned
    customer.to_json
    else
      customer.item_returned = "Pending"
      customer.to_json
    end 
  end

  post "/customers" do
    new_customer = Customer.create({
      name: params[:name],
      item: params[:item],
      item_received: params[:item_received],
      item_returned: params[:item_returned],
      description: params[:description],
      technician_id: params[:technician_id]
    })
    new_customer.to_json
  end

  patch "/technicians/:id" do
    techie = Technician.find(params[:id])
    techie.update(title: params[:title])
    techie.to_json
  end

  delete "/technicians/:id" do
    techie = Technician.find(params[:id])
    techie.destroy
  end

end
