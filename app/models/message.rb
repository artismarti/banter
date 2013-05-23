class Message < ActiveRecord::Base
  attr_accessible :body, :name, :photo_url, :provider, :provider_id, :room_id
 
  belongs_to :room

  validates :body, presence: true
  validates :name, presence: true
end
