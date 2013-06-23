class Prototype < ActiveRecord::Base
	belongs_to :project
  attr_accessible :detail, :image, :name, :project_id

  mount_uploader :image, ImagenoteUploader
end
