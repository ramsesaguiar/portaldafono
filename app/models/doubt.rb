class Doubt < ActiveRecord::Base
  belongs_to :users
  belongs_to :authors

end
