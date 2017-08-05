# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  name        :string
#  brand_id    :integer
#  category_id :integer
#  price       :integer
#  created_at  :datetime
#  updated_at  :datetime
#  description :string
#

class Product < ActiveRecord::Base
  belongs_to :brand
  belongs_to :category
  has_many :cart_item
end
