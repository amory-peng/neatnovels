# == Schema Information
#
# Table name: bookshelves
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  protect    :boolean          default("false")
#

class Bookshelf < ApplicationRecord
  validates :name, :user_id, presence: true

  belongs_to :user
  has_many :shelvings, dependent: :destroy
  has_many :books, through: :shelvings

  validates_uniqueness_of :name, scope: [:user_id]
end
