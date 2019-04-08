class RemovePublishedStatusToPosts < ActiveRecord::Migration[5.0]
  def change
    remove_column :posts, :published_status, :string
  end
end
