# == Schema Information
#
# Table name: carts
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  status      :integer
#  total_price :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Cart < ActiveRecord::Base
  belongs_to :user
  has_many :cart_items

end
