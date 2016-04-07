class AddCommentsToTickets < ActiveRecord::Migration
  def change
    add_column :comments, :ticket_id, :integer
  end
end
