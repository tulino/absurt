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

class City < ActiveRecord::Base

  # Helpers
  audited

  # Relations
  belongs_to :country

  # Validations
  validates_presence_of :name, :country_id

end
