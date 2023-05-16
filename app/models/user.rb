class User < ApplicationRecord
    has_many :posts, class_name: "post", foreign_key: "reference_id", dependent: :destroy
    has_many :comments, class_name: "comment", foreign_key: "reference_id", dependent: :destroy
    has_many :likes, class_name: "like", foreign_key: "reference_id", dependent: :destroy
end
