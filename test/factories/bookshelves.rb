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

FactoryGirl.define do
  factory :bookshelf do

  end
end
