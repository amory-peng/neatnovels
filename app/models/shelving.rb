class Shelving < ApplicationRecord
  belongs_to :bookshelf
  belongs_to :book

  validates_uniqueness_of :bookshelf_id, scope: [:book_id]
end
