class CreateUserEvents < ActiveRecord::Migration[8.0]
  def change
    create_table :user_events do |t|
      t.references :event, null: false, foreign_key: true
      t.references :creator, null: false, foreign_key: { to_table: :users }
      t.references :attender, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
