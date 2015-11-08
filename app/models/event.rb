  class Event < ActiveRecord::Base
    belongs_to :user, inverse_of: :locations
    belongs_to :location, inverse_of: :users
  end
