class CreateTicketIssues < ActiveRecord::Migration[5.2]
  def change
    create_table :ticket_issues do |t|
      t.integer :ticket_id
      t.integer :issue_id
      t.timestamps
    end
  end
end
