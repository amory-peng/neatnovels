# == Schema Information
#
# Table name: shelvings
#
#  id           :integer          not null, primary key
#  bookshelf_id :integer
#  book_id      :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Shelving < ApplicationRecord
  belongs_to :bookshelf
  belongs_to :book

  validates_uniqueness_of :bookshelf_id, scope: [:book_id]
end
