json.array!(@auctions) do |auction|
  json.extract! auction, :id, :company_id
  json.url auction_url(auction, format: :json)
end
