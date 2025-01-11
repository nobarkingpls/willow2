class Actor < ApplicationRecord
  has_many :casts

  validates :name, presence: true, uniqueness: true
end
