# == Schema Information
#
# Table name: books
#
#  id          :integer          not null, primary key
#  title       :string
#  year        :integer
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  author      :string
#  image_url   :text
#

class Book < ApplicationRecord
  validates :title, :year, :description, presence: true
  validates_uniqueness_of :title, scope: :author

  has_many :comments, dependent: :destroy
  has_many :shelvings, dependent: :destroy
  has_many :bookshelves, through: :shelvings
end
