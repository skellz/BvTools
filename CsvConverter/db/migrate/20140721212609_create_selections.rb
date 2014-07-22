class CreateSelections < ActiveRecord::Migration
  def change
    create_table :selections do |t|
    	t.boolean :external_id, null: :false, default: :false
    	t.boolean :brands, null: :false, default: :false
    	t.boolean :locale, null: :false, default: :false
    	t.boolean :image_url, null: :false, default: :false
    	t.boolean :description, null: :false, default: :false
    	t.boolean :mpn, null: :false, default: :false
    	t.boolean :ean, null: :false, default: :false
    	t.boolean :upc, null: :false, default: :false
    	t.boolean :model_num, null: :false, default: :false
    	t.boolean :isbn, null: :false, default: :false

      t.timestamps
    end
  end
end
