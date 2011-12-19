class Tweet < ActiveRecord::Base
  validates :status, :presence => true
  
  belongs_to :pony
end

