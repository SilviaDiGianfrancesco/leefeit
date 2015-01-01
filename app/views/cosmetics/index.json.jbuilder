json.array!(@cosmetics) do |cosmetic|
  json.extract! cosmetic, :id, :Product, :phone, :website
  json.url cosmetic_url(cosmetic, format: :json)
end
