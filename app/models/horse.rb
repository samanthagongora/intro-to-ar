class Horse < ActiveRecord::Base
  belongs_to :jockey

  def total_winnings_by_jockey(jockey_id)
    Horse.where(jockey_id: jockey_id).sum(:total_winnings)
  end
end
