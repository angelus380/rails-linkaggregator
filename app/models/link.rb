class Link < ApplicationRecord
	validates :title, presence: true
  validates :url, :format => URI::regexp(%w(http https))
  belongs_to :user
  has_many :comments
	acts_as_votable
end
