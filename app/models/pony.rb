class Pony < ActiveRecord::Base
   validates :name, :presence => true, :uniqueness => true
   validates :color, :presence => true
   
   validates_format_of :image_url, :with => URI::regexp(%w(http https) )
   
   has_many :tweets
end
