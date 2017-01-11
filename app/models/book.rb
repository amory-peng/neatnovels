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
#  image_url   :string
#  author      :string
#

class Book < ApplicationRecord
  validates :title, :year, :description, presence: true
  validates_uniqueness_of :title, scope: :author
end
