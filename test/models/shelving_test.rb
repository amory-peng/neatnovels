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

require 'test_helper'

class ShelvingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
