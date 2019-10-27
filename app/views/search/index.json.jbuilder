json.array! @products do |product|
  json.title product.title
  json.id product.id
end