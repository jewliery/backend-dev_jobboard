class AddLongDescriptionToJob < ActiveRecord::Migration[7.1]
  def change
    add_column :jobs, :long_description, :text
  end
end
