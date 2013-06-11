class Note < ActiveRecord::Base
	belongs_to :project
  attr_accessible :image, :link, :name, :text, :image

  mount_uploader :image, ImagenoteUploader

end
