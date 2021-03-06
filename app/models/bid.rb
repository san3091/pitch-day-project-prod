class Bid < ActiveRecord::Base
  belongs_to :company
  belongs_to :auction
  belongs_to :inventory_part

  def self.supplier_auctions user_bids
    auctions = []
    if user_bids
      user_bids.each do |bid|
        auctions.push(bid.auction) if bid.auction.active == true
      end
      auctions.uniq! || auctions
    end
  end
end
