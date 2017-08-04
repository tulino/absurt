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
  has_and_belongs_to_many :tags
end
