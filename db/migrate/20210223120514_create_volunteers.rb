class CreateVolunteers < ActiveRecord::Migration[6.0]
  def change
    create_table :volunteers do |t|
      t.string :request_type
      t.text :description
      t.string :location
      t.decimal :latitude
      t.decimal :longitude
      t.string :status
      t.datetime :request_due_date

      t.timestamps
    end
  end
end
