class Design < ActiveRecord::Base
	belongs_to :project
  attr_accessible :image, :name, :project_id
   mount_uploader :image, ImagenoteUploader
end
