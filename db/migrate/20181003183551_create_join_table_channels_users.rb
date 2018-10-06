class CreateJoinTableChannelsUsers < ActiveRecord::Migration[5.2]
  def change
    create_join_table :channels, :users do |t|
      t.index [:channel_id, :user_id]
      t.index [:user_id, :channel_id]
    end
  end
end