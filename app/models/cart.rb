# == Schema Information
#
# Table name: carts
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  product_id  :integer
#  status      :integer
#  total_price :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Cart < ActiveRecord::Base
end
