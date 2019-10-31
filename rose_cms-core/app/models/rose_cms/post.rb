module RoseCms
  class Post < ApplicationRecord
    belongs_to :user
    has_many :postmetas, dependent: :destroy
    has_many :comments, dependent: :destroy
    has_many :categories, through: :term_relationships, source: 'taxonomy', source_type: 'Category'
    has_many :term_taxonomies, through: :term_relationships, dependent: :destroy
  end
end
