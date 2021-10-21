class AddsEnglishToMovies < ActiveRecord::Migration[6.1]
  def change
    add_column :movies, :english, :boolean, null: true, default: true
  end
end
