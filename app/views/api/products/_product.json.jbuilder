json.name product.name
json.price product.price
json.images product.images
json.description product.description
json.supplier product.supplier.name
json.id product.id

json.formatted do
  json.price product.is_discounted?
  json.tax number_to_currency(product.tax)
  json.total product.total
end