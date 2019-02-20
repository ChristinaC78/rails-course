class CreateConcerts < ActiveRecord::Migration[5.2]
  def change
    create_table :concerts do |t|

      t.timestamps
    end
  end
end
