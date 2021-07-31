class AddRtIdToTweet < ActiveRecord::Migration[6.1]
  def change
    add_column :tweets, :rt_ref, :integer
  end
end
