# == Schema Information
#
# Table name: countries
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Country < ActiveRecord::Base

  # Helpers
  audited

  # Relations
  has_many :cities, dependent: :restrict_with_error

  # Validations
  validates_presence_of :name

end
