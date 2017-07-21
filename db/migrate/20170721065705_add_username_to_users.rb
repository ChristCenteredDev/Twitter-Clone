class AddUsernameToUsers < ActiveRecord::Migration
  def change # anything inside of this is translated to SQL code & modifies the database (currently, SQlite)
    add_column :users, :username, :string # add a new column to table "users", called "username" and of type "string"
    add_index :users, :username, unique: true # first, index usernames for quick lookup. Second, ensures usernames are unique.
  end
end
