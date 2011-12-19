class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.integer :pony_id
      t.text :status
      t.datetime :created

      t.timestamps
    end
  end
end
