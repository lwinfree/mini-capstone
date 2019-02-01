json.name product.name
json.price product.price
json.images product.images
json.description product.description
json.supplier product.supplier.name
json.id product.id
# json.user current_user.name
json.category_names product.category_names #we made this cstegory_names method in products.rb

json.formatted do
  json.price product.is_discounted?
  json.tax number_to_currency(product.tax)
  json.total product.total
end