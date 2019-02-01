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

    post "/users" => "users#create"

    post "/sessions" => "sessions#create"

    post "/orders" => "orders#create"

    get "/orders" => "orders#index"

    post "/cart" => "carted_products#create"

    get "/cart" => "carted_products#index"

    delete "cart/:id" => "carted_products#destroy"

  end

end
