class RemoveEnglishFromMovies < ActiveRecord::Migration[6.1]
  def change
    remove_column :movies, :english, :boolean
  end
end
