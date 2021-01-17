class User < ApplicationRecord
    has_one :diet
    has_many :user_weights
    has_many :foods, through: :meals
    has_secure_password

    accepts_nested_attributes_for :user_weights
end
