class ChangeComment < ActiveRecord::Migration
  def change
    rename_column :comments, :comment, :commenter
  end
end
