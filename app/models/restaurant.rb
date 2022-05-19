class Restaurant < ApplicationRecord
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"], allow_blank: true, message: "not an allowable category." }
  has_many :reviews, dependent: :destroy
end
