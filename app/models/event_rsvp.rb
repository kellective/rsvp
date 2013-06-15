class EventRsvp < ActiveRecord::Base
  attr_accessible :email, :name, :probability, :event_id

  belongs_to :event, inverse_of: :event_rsvps
  validates_presence_of :event_id, :email, :name
  delegate :name, to: :event, prefix: true, allow_nil: true
  # calling this probability because I eventually want to make a sliding scale...how likely they are to attend.
  validates :probability, :presence => true, :inclusion => { :in => %w(yes no maybe) }

end
