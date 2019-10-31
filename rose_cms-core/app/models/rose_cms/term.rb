module RoseCms
  class Term < ApplicationRecord
    has_many :termmetas, dependent: :destroy
    has_many :term_taxonomies, dependent: :destroy
  end
end
