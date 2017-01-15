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

require 'test_helper'

class BookTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
