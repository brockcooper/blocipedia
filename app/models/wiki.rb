class Wiki < ActiveRecord::Base
  has_many :collaborators
  has_many :users, through: :collaborators
  belongs_to :owner, :class_name => "User" 
  belongs_to :creator, :class_name => "User" 
end
