class AddGithubToTicket < ActiveRecord::Migration
  def change
    add_column :tickets, :repo_url, :string
  end
end
