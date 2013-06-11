class Project < ActiveRecord::Base
	belongs_to :user
	has_many :notes, :dependent => :destroy
  attr_accessible :detail, :name, :notes_attributes
  accepts_nested_attributes_for :notes, :reject_if => lambda { |a| a[:name].blank? }, :allow_destroy => true
end
