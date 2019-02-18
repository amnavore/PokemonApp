class Pokemon < ApplicationRecord
  has_and_belongs_to_many:Pokestop
  validates :name, :location, presence:true
end
