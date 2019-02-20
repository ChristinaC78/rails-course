class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.integer :user_id
      t.string :pcname
      t.string :name
      t.string :extension
      t.string :status
      t.timestamps
    end
  end
end
