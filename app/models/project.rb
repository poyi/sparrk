class Project < ActiveRecord::Base
	belongs_to :user
	has_many :notes, :dependent => :destroy
	has_many :prototypes, :dependent => :destroy
	has_many :designs, :dependent => :destroy
  attr_accessible :detail, :name, :notes_attributes
  accepts_nested_attributes_for :notes, :prototypes, :designs, :reject_if => lambda { |a| a[:name].blank? }, :allow_destroy => true
end
