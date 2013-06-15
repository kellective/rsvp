class Event < ActiveRecord::Base
  attr_accessible :event_date, :event_location, :name

  has_many :event_rsvps, inverse_of: :event
  validates_presence_of :event_date, :event_location, :name

end
