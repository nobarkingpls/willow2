class Movie < ApplicationRecord
  has_many :rights, class_name: "Right", dependent: :destroy
  accepts_nested_attributes_for :rights, allow_destroy: true, reject_if: :all_blank
end
