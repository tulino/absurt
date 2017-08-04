# == Schema Information
#
# Table name: cities
#
#  id         :integer          not null, primary key
#  name       :string
#  country_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_cities_on_country_id  (country_id)
#

require 'rails_helper'

RSpec.describe City, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
