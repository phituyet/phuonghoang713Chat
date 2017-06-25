class AddIsReadToMessages < ActiveRecord::Migration[5.1]
  def change
    add_column :messages, :is_read, :boolean
    add_column :messages, :read_at, :timestamp
  end
end
