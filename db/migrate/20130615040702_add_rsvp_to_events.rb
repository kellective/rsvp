class AddRsvpToEvents < ActiveRecord::Migration
  def change
    add_column :event_rsvps, :event_id, :integer
  end
end
