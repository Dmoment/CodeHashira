class Comment < ApplicationRecord
  belongs_to :user
  has_many :taggings
  has_many :tags, through: :taggings, source: :taggable, source_type: 'Comment'
end
