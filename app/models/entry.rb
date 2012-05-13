class Entry < ActiveRecord::Base
  attr_accessible :neg_karma, :pos_karma, :rating, :user_id, :note
  belongs_to :user

  validates_presence_of :rating
end
