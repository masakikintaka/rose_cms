module RoseCms
  class Comment < ApplicationRecord
    belongs_to :post, counter_cache: :comment_count
    has_many :commentmetas, dependent: :destroy
  end
end
