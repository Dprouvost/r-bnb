class Schedule < ApplicationRecord
  belongs_to :artist, optional: true 
end
