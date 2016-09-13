class AddNewDraftDateColumnToBookings < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :draft_date, :date
  end
end
