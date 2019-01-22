json.name product.name
json.price product.price
json.image_url product.image_url
json.description product.description

json.formatted do
  json.price product.is_discounted?
  json.tax number_to_currency(product.tax)
  json.total product.total
end