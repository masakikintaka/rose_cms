module RoseCms
  class TermTaxonomy < ApplicationRecord
    self.inheritance_column = 'taxonomy'
    belongs_to :term
    has_many :posts, through: :term_relationships, dependent: :destroy
  end
end
