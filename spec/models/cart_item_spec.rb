# == Schema Information
#
# Table name: cart_items
#
#  id         :integer          not null, primary key
#  cart_id    :integer
#  product_id :integer
#  created_at :datetime
#  updated_at :datetime
#

require 'rails_helper'

RSpec.describe CartItem, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
