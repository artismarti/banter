class Room < ActiveRecord::Base
  attr_accessible :title, :url

  has_many :messages

  acts_as_url :title

  validates :title, presence: true, uniqueness: true

def to_param
	url
end

end
