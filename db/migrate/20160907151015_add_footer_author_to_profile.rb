class AddFooterAuthorToProfile < ActiveRecord::Migration[5.0]
  def change
    add_column :profiles, :footer_author, :string
  end
end
