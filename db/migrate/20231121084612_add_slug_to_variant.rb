class AddSlugToVariant < ActiveRecord::Migration[7.0]
  def change
    add_column :variants, :slug, :string
  end
end
