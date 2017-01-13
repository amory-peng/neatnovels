class Bookshelf < ApplicationRecord
  validates :name, :user_id, presence: true

  belongs_to :user
  has_many :shelvings, dependent: :destroy
  has_many :books, through: :shelvings

  validates_uniqueness_of :name, scope: [:user_id]
end
