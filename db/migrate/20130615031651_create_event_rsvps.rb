class CreateEventRsvps < ActiveRecord::Migration
  def change
    create_table :event_rsvps do |t|
      t.string :name
      t.string :email
      t.text :probability

      t.timestamps
    end
  end
end
