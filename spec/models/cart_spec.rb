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

require 'rails_helper'

RSpec.describe Cart, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
