class AddPhotoAndYoutubeColumnToKidsTable < ActiveRecord::Migration
  def change
    add_column :kids, :photo, :string
    add_column :kids, :youtube, :string
  end
end
