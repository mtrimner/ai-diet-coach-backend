class UserWeight < ApplicationRecord
  belongs_to :user
  belongs_to :diet
end
