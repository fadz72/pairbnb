json.array!(@listings) do |listing|
  json.extract! listing, :id, :property_name, :price, :description, :user_id
  json.url listing_url(listing, format: :json)
end
