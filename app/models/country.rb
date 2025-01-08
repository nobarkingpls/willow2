class Country < ApplicationRecord
  has_many :rights, class_name: "Right"
end
