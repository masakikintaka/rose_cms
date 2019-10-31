module RoseCms
  class TermRelationship < ApplicationRecord
    belongs_to :term_taxonomy
    belongs_to :post
  end
end
