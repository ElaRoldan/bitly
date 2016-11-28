class CreateUrl < ActiveRecord::Migration
  def change
  create_table :urls do |t|
    t.string :original
    t.string :short_url
    t.integer :click_count, default: 0
    t.timestamps 
    end   
  end
end

