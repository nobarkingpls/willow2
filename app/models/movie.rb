class Movie < ApplicationRecord
  has_many :rights, class_name: "Right", dependent: :destroy
  accepts_nested_attributes_for :rights, allow_destroy: true, reject_if: :all_blank

  has_many :categories
  accepts_nested_attributes_for :categories, allow_destroy: true, reject_if: :all_blank

  has_many :classifications
  accepts_nested_attributes_for :classifications, allow_destroy: true, reject_if: :all_blank

  has_many :advisories
  accepts_nested_attributes_for :advisories, allow_destroy: true, reject_if: :all_blank
end
