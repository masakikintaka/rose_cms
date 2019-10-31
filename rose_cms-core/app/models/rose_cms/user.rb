module RoseCms
  class User < ApplicationRecord
    has_many :posts
    has_many :usermetas, dependent: :destroy
  end
end
