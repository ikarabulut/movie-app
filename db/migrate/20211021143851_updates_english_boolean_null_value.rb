class UpdatesEnglishBooleanNullValue < ActiveRecord::Migration[6.1]
  def change
    change_column :movies, :english, :boolean, null: true, default: true
  end
end
