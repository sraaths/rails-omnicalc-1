Rails.application.routes.draw do
  root "calculations#index"

  # Routes for form pages
  get "/square/new", to: "calculations#square_new"       
  get "/square_root/new", to: "calculations#square_root_new" 
  get "/payment/new", to: "calculations#payment_new"     
  get "/random/new", to: "calculations#random_new"       

  # Routes for result pages
  get "/square/results", to: "calculations#square_results"
  get "/square_root/results", to: "calculations#square_root_results"
  get "/payment/results", to: "calculations#payment_results"
  get "/random/results", to: "calculations#random_results"
end

