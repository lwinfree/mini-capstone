Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  
  namespace :api do
    
    get "/products" => "products#all_products_method"

    get "/canvas" => "products#canvas_method"

    get "/fan_brush" => "products#fan_brush_method"

    get "/phthalo_blue" => "products#phthalo_blue_method"

    get "/palette_knife" => "products#palette_knife_method"

  end

end
