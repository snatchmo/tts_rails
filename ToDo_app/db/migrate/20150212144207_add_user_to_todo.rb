class AddUserToTodo < ActiveRecord::Migration
  def change
    add_column :todos, :user_it, :integer
  end
end
