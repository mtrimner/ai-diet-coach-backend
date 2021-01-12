class User < ApplicationRecord
    has_one :diet
    has_many :weighins
    has_secure_password
end
