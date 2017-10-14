class UserIdColumn < ActiveRecord::Migration[5.1]
  def change
    add_reference :billings , :user
  end
end
