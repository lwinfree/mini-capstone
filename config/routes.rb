Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  
  namespace :api do
    
    #can replace these commented out routes with the RESTful routes below
    # get "/products" => "products#all_products_method"

    # get "/canvas" => "products#canvas_method"

    # get "/fan_brush" => "products#fan_brush_method"

    # get "/phthalo_blue" => "products#phthalo_blue_method"

    # get "/palette_knife" => "products#palette_knife_method"

    #create a single route that can display ANY single product using a query parameter

    # get "/query_products" => "products#query_products"

    # #create a single route that can display ANY single product using a url segment parameter.
    # get "/query_products/:product" => "products#query_products"

    #restful index to list all products
    get "/products" => "products#index"

    #restful show action to list single products
    get "/products/:id" => "products#show"

    #RESTful create action. Do this post in Insomnia
    post "/products" => "products#create"

    #RESTful update action. Run in insomnia
    patch "/products/:id" => "products#update"

    #RESTful destroy action. Run in insomnia
    delete "/products/:id" => "products#destroy"


  end

end
