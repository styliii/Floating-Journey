class Entry < ActiveRecord::Base
  attr_accessible :neg_karma, :pos_karma, :rating, :user_id
  belongs_to :user
end
