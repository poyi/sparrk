class Note < ActiveRecord::Base
	belongs_to :project
  attr_accessible :image, :link, :name, :text, :image, :position

  mount_uploader :image, ImagenoteUploader

end
