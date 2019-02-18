class Pokestop < ApplicationRecord
  has_and_belongs_to_many:Pokemon
end
