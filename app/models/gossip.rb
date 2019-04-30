class Gossip < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true

  belongs_to :user
  has_many :tag_gossip_links
  has_many :tags, through: :tag_gossip_links
end
