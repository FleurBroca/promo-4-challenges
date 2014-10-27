class CreatePosts < ActiveRecord::Migration
  def change
    # TODO: your code here to create the posts table
    create_table :posts do |t|
      t.string  :name
      t.string  :url
      t.timestamps :created_at
      t.timestamps :updated_at
    end
  end
end

class

class AddVotesToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :votes, :integer
  end
end




