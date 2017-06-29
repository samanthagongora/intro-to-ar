class Horse < ActiveRecord::Base
  belongs_to :jockey

  def self.total_winnings
    
  end
end
