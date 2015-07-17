class Project <ActiveRecord::Base
  validates :app, :presence => true
  validates :info, :presence => true
  belongs_to :skill
end
