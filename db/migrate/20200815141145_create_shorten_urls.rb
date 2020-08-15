class CreateShortenUrls < ActiveRecord::Migration[6.0]
  def change
    create_table :shorten_urls do |t|
      t.string :original_url
      t.string :short_url
      t.timestamps
    end
  end
end
