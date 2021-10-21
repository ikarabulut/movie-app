class UpdatesEnglishBooleanInMovies < ActiveRecord::Migration[6.1]
  def change
    change_column :movies, :english, :boolean, default: true, null: true
  end
end
