json.array!(@drums) do |drum|
  json.extract! drum, :id, :drumTitle, :drumSize, :drumPhoto, :drumPrice, :drumCustomer, :drumCustomerSocial, :drumDetails
  json.url drum_url(drum, format: :json)
end
