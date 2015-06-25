class Ficheprospect < ActiveRecord::Base

  belongs_to :prospect

  acts_as_taggable
  
end
