Supplier.create!([
  {name: "Home Depot", email: "homedepot@hd.org", phone_number: "123-456-9999"},
  {name: "Walmart", email: "wally@world.org", phone_number: "123-555-9099"},
  {name: "Target", email: "target@target.org", phone_number: "444-505-1111"}
])
Product.create!([
  {name: "canvas", price: "5.0", description: "canvas for painting happy accidents", supplier_id: 2},
  {name: "phthalo blue", price: "7.0", description: "blue paint for painting fluffy clouds", supplier_id: 1},
  {name: "palette knife", price: "6.0", description: "palette knife for painting majestic mountains", supplier_id: 3},
  {name: "odorless paint thinner", price: "8.0", description: "odorless paint thinner to beat the devil out of the brush", supplier_id: 1},
  {name: "fan brush", price: "3.0", description: "fan brush for painting happy little trees", supplier_id: 3}
])
Image.create!([
  {url: "https://images-na.ssl-images-amazon.com/images/I/41lReyQWZoL._US500_.jpg", product_id: 5},
  {url: "https://cdn.shopify.com/s/files/1/0683/8625/products/phthalo-blue-fixed_1024x1024.jpg?v=1543330104", product_id: 3},
  {url: "http://www.hobbycraft.co.uk/supplyimages/579880_1000_1_800.jpg", product_id: 4},
  {url: "https://images-na.ssl-images-amazon.com/images/I/71NgWpG3KFL._AC._SR360,460.jpg", product_id: 1},
  {url: "https://images-na.ssl-images-amazon.com/images/I/51f7at5o%2BBL._SX425_.jpg", product_id: 2}
])

