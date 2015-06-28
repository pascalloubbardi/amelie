json.array!(@orders) do |order|
  json.extract! order, :id, :subtotal, :tax, :shipping, :status
  json.url order_url(order, format: :json)
end
