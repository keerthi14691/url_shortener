class CreateAnalytics < ActiveRecord::Migration[6.0]
  def change
    create_table :analytics do |t|
      t.float :ip_address
      t.string :country
      t.references :shorten_url
      t.timestamps
    end
  end
end
