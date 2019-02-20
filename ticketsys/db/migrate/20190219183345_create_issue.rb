class CreateIssues < ActiveRecord::Migration[5.2]
  def change
    create_table :issues do |t|
      t.string :name
      t.string :description
      t.string :picture
      t.timestamps
    end
  end
end
